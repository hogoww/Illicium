Class {
	#name : #ANSlangInliner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething',
		'translator'
	],
	#classInstVars : [
		'selectorMacros'
	],
	#category : #'Angler-Slang-analysis'
}

{ #category : #testing }
ANSlangInliner class >> includesSelectorTranslatedAsMacro: aSelector [ 
	"Caching the result" 
	selectorMacros ifNil: [ selectorMacros := VMPluginCodeGenerator new selectorsThatMayBeGeneratedAsMacros ].
	^ selectorMacros includes: aSelector
]

{ #category : #accessing }
ANSlangInliner class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

{ #category : #applying }
ANSlangInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [
	"Should get a copy of a method node as parameter, since it's going to modify it."
	program := aProgram.
	[
		inlinedSomething := false.
		aMethodNode acceptVisitor: self 
	] doWhileTrue: [ inlinedSomething ].
	 ^ aMethodNode
]

{ #category : #applying }
ANSlangInliner >> applyOnMethodI: aMethodNode ofProgram: aProgram [	
	program := aProgram.
	inlinedSomething := true.
	[ inlinedSomething ]
	whileTrue: [  
		aMethodNode nodesDo: [:aNode|
			1halt.
			((aNode isMessage
				and: [ aProgram hasMethodNamed: aNode selector ])
					and: [ (translator isSpecialSelector: aNode selector) ])	
				ifTrue:[ | methodToInline |	
					inlinedSomething := true.
					methodToInline := (aProgram methodNamed: aNode selector) copy.
					self renameVariablesOf: methodToInline byArguments: aNode arguments.
					self inline: methodToInline insteadOf: aNode	
					]]].
	^ aMethodNode
]

{ #category : #inlining }
ANSlangInliner >> cleanStatements: nodesToInline [

	| cleanNodes node |
	cleanNodes := nodesToInline copy.
	"nodesToInline do: [:aNode| 
		(aNode isMessage and: [ aNode selector = #assert: ]) ifTrue: [ cleanNodes remove: aNode ]]."
	
	nodesToInline size > 1 ifFalse: [ ^ nodesToInline ].
	node := cleanNodes first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ cleanNodes remove: node ].
	^ cleanNodes
]

{ #category : #inlining }
ANSlangInliner >> createNewBlockithStatements: nodesToInline [
	| newBlock |
	newBlock := RBBlockNode
		body:
			(RBSequenceNode new
				propertyAt: ASTCVariableDeclarationAnnotator property
					put: ASTCVariableDeclarationAnnotator defaultCollection new;
				yourself).
	"each sequence node must know what to declare. In slang, nothing unless you're the body of the method"
	newBlock body statements: nodesToInline.
	^ newBlock
]

{ #category : #renaming }
ANSlangInliner >> handleTemporariesFrom: methodToInline in: methodInlining [
	| replacements |
	"we first get the names"
	replacements := self newNamesForIntersectionOf: methodToInline temporaryNames
		and: methodInlining temporaryNames.
		
	"then replace the names of the nodes with the new ones"
	replacements ifNotEmpty: [ "This avoids costy iteration over an ast"
			self renameVariablesIn: methodToInline using: replacements.
		].
	
	"finally we merge the name annotations. as well as the declaration annotation"
	self mergeTemporariesOf: methodToInline into: methodInlining
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	"We attempt to inline the nodes in different cases.
	If none match, we just replace the message with the collection of nodes."
	"General preparation for inlining"
	nodesToInline := aMethodNode statements.
	nodesToInline := self cleanStatements: nodesToInline.
	nodesToInline last isReturn
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].

	(self inlineIfOnlyOneNode: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoAssignment: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoReturn: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	
	aMessageNode parent replaceNode: aMessageNode withNodes: nodesToInline
]

{ #category : #inlining }
ANSlangInliner >> inlineIfMultipleNodeIntoAssignment: nodesToInline insteadOf: aMessageNode [
	| newBlock newAssignment lastNode |
	aMessageNode parent isAssignment ifFalse: [ ^ false ].
	
	"rearanging the parent and children of the assignment 
	to put the assignment as the last statement of the collection"
	lastNode := nodesToInline removeLast.
	newAssignment := aMessageNode parent copy.
	newAssignment value: lastNode.
	nodesToInline add: newAssignment.
	
	newBlock := self createNewBlockithStatements: nodesToInline.
	lastNode := self typeNewBlock: newBlock.

	"replacing the whole assignment"
	aMessageNode parent replaceWith: newBlock.
	^ true
]

{ #category : #inlining }
ANSlangInliner >> inlineIfMultipleNodeIntoReturn: nodesToInline insteadOf: aMessageNode [
	| newBlock newAssignment lastNode |
	aMessageNode parent isReturn ifFalse: [ ^ false ].
	newBlock := self createNewBlockithStatements: nodesToInline.
	lastNode := self typeNewBlock: newBlock.

	"replacing the whole assignment"
	aMessageNode replaceWith: newBlock.
	^ true
]

{ #category : #inlining }
ANSlangInliner >> inlineIfOnlyOneNode: nodesToInline insteadOf: aMessageNode [
	nodesToInline size = 1 ifFalse: [ ^ false ]. 	
	
	aMessageNode replaceWith: nodesToInline first.
	^ true
]

{ #category : #renaming }
ANSlangInliner >> mergeTemporariesOf: methodToInline into: methodInlining [
	| declarationProperty |
	declarationProperty := ASTCVariableDeclarationAnnotator property.
	"in case of testing environment, we don't check"
	methodInlining body
		temporaries: methodInlining temporaries , methodToInline body temporaries.
		
	((methodInlining body hasProperty: declarationProperty) 
		and:[ methodToInline body hasProperty: declarationProperty ]) ifFalse:[ ^ self ].
	
	methodInlining body
		propertyAt: declarationProperty
		put: (methodInlining body propertyAt: declarationProperty)
				, (methodToInline body propertyAt: declarationProperty).
]

{ #category : #renaming }
ANSlangInliner >> newNamesForIntersectionOf: tempNames1 and: tempNames2 [
	| newTemporariesName intersection |
	"We gather the names of the temporaries that appear in both method, and find a suitable new name for the ones that will be inlined."
	newTemporariesName := Dictionary new.
	intersection := tempNames1 intersection: tempNames2.
	
	"suitable new name being the same name, with a number at the end."
	intersection do: [ :aTempName | 
			| newName counter |
			counter := 1.
			[ 
				newName := aTempName , counter asString.
				intersection includes:  newName 
			] whileTrue:[ counter := counter + 1 ].
			newTemporariesName at: aTempName put: newName.
		].
	^ newTemporariesName
]

{ #category : #renaming }
ANSlangInliner >> renameVariablesIn: aMethodNode using: replacementNames [
	| newProperties |
	aMethodNode nodesDo: [ :aNode |
		aNode isTemporaryNode
			ifTrue:[
				replacementNames at: aNode name
					ifPresent:[ aNode name: (replacementNames at: aNode name) ]
				]
		].
	
	"Check in case we're in testing environment."
	(aMethodNode body hasProperty: ASTCVariableDeclarationAnnotator property) ifFalse: [ ^ self ].
	
	"properties are shallow copied. Since have references to TempDeclaration, we have to touch the copy, not the main node."
	newProperties := (aMethodNode body propertyAt: ASTCVariableDeclarationAnnotator property)
		collect: [ :aTempDecl |
			replacementNames at: aTempDecl name
				ifPresent:[ aTempDecl copy name: (replacementNames at: aTempDecl name) ]
				ifAbsent: [  aTempDecl copy ]
			].
	aMethodNode body propertyAt: ASTCVariableDeclarationAnnotator property put: newProperties
]

{ #category : #renaming }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |	
	aMethodNode body nodesDo: [:aNode |  
		(aNode isArgument and:[ aNode isBlockVar not ]) ifTrue: [
			replacement := arguments at: (aMethodNode arguments indexOf: aNode).
			aNode replaceWith: replacement ] ] 
]

{ #category : #inlining }
ANSlangInliner >> shouldInline: aMessageNode [
	
	| methodToInline |
	(self class includesSelectorTranslatedAsMacro: aMessageNode selector) ifTrue: [ ^ false ].
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	
	methodToInline := program methodNamed: aMessageNode selector.
	
	methodToInline pragmaNamed: #inline:
		ifPresent: [:aPragma| (#(false never) includes: aPragma arguments first value) ifTrue: [ ^ false ] ].
		
	^(translator isSpecialSelector: aMessageNode selector) not
		and: [ (methodToInline hasPragmaNamed: #cmacro) not
			and: [ (methodToInline hasPragmaNamed: #cmacro:) not ] ]
]

{ #category : #accessing }
ANSlangInliner >> translator [
	^ translator
]

{ #category : #accessing }
ANSlangInliner >> translator: anObject [
	translator := anObject
]

{ #category : #inlining }
ANSlangInliner >> typeNewBlock: newBlock [
	| typingProperty lastNode |
	
	typingProperty := ASTCTypeAnnotator property.
	lastNode := newBlock statements last.
	lastNode
		propertyAt: typingProperty
		ifPresent: [ newBlock
				propertyAt: typingProperty
				put: (lastNode propertyAt: typingProperty) ]
		"If it's untyped, we don't do anything. This is the case in a test context for example."
		ifAbsent: [ nil ].
	^ lastNode
]

{ #category : #applying }
ANSlangInliner >> visitMessageNode: aMessageNode [

	(self shouldInline: aMessageNode)
		ifTrue:[ | methodToInline |
			inlinedSomething := true.
			methodToInline := (program methodNamed: aMessageNode selector) copy.
			self handleTemporariesFrom: methodToInline in: aMessageNode methodNode.
			self renameVariablesOf: methodToInline byArguments: aMessageNode arguments.
			self inline: methodToInline insteadOf: aMessageNode.
			].
	
	"Do not inline inside assertions <- inline is already done here. looks weird."
	aMessageNode selector = #assert: ifTrue: [ ^ self ].
	super visitMessageNode: aMessageNode
]
