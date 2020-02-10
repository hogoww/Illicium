Class {
	#name : #ANSlangInliner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething',
		'translator',
		'selectorMacros',
		'temporaryNamesToAdd'
	],
	#category : #'Angler-Slang-analysis'
}

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

{ #category : #cleaning }
ANSlangInliner >> cleanMethod: aRBMethodNode [
	| node |
	aRBMethodNode statements size > 1 ifFalse: [ ^ self ].

	node := aRBMethodNode statements first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ aRBMethodNode body removeNode: node ]
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
ANSlangInliner >> handleTemporariesFrom: methodToInline in: methodInlining [
	| replacements |
	"we first get the names"
	replacements := self newNamesForIntersectionOf: methodToInline temporaryNames
		and: methodInlining temporaryNames.
		
	"then replace the names of the nodes with the new ones"
	replacements ifNotEmpty: [ "This avoids costy iteration over an ast"
			self renameVariablesIn: methodToInline using: replacements
		]
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	aMessageNode methodNode body
		temporaries: aMessageNode methodNode temporaries , aMethodNode body temporaries.
	nodesToInline := aMethodNode statements.
	nodesToInline := self cleanStatements: nodesToInline.
	
	nodesToInline last isReturn
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].

	nodesToInline size = 1
		ifTrue: [ ^ aMessageNode replaceWith: nodesToInline first ].
	
	aMessageNode parent isAssignment ifTrue: [ | typingProperty newBlock newAssignment lastNode |
		newBlock := 
			(RBBlockNode body:
				(RBSequenceNode new
					"each sequence node must know what to declare. In slang, nothing unless you're the body of the method"
					propertyAt: ANSlangDeclarationAnnotator property put: OrderedCollection new;
					yourself)
				).
			typingProperty := ASTCTypeAnnotator property.
			lastNode := nodesToInline removeLast.
			newAssignment := aMessageNode parent copy.
			newAssignment value: lastNode.
			nodesToInline add: newAssignment.
			newBlock body statements: nodesToInline.
			lastNode propertyAt: typingProperty 
				ifPresent: [ newBlock propertyAt: typingProperty
						put:  (lastNode propertyAt: typingProperty) 
					]
				ifAbsent: [ nil ]."If it's untyped, we don't do anything. This is the case in a test context for example."
			^ aMessageNode parent replaceWith: newBlock "replacing the whole assignment"
		].
	
	aMessageNode parent replaceNode: aMessageNode withNodes: nodesToInline
]

{ #category : #renaming }
ANSlangInliner >> newNamesForIntersectionOf: methodToInlineTempNames and: methodInliningTempNames [
	| newTemporariesName intersection |
	"We gather the names of the temporaries that appear in both method, and find a suitable new name for the ones that will be inlined."
	newTemporariesName := Dictionary new.
	intersection := methodToInlineTempNames intersection: methodInliningTempNames.
	
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
	| namesToReplace |
	namesToReplace := replacementNames keys.
	aMethodNode nodesDo: [ :aNode |
		(aNode isTemp or: [ aNode isArgument and: [ namesToReplace includes: aNode name]])
			ifTrue:[
				aNode name: (replacementNames at: aNode name)
				]
		] 
	
]

{ #category : #inlining }
ANSlangInliner >> renameVariablesOf: aMethodNode byArguments: arguments [
  | replacement |	
	aMethodNode body nodesDo: [:aNode |  
		(aNode isArgument and:[ aNode isBlockVar not ]) ifTrue: [
			replacement := arguments at: (aMethodNode arguments indexOf: aNode).
			aNode replaceWith: replacement ] ] 
]

{ #category : #inlining }
ANSlangInliner >> selectorTranslatedAsMacro [
	"lazy accessor for now."
	^ selectorMacros ifNil: [ selectorMacros := VMPluginCodeGenerator new selectorsThatMayBeGeneratedAsMacros ]
]

{ #category : #applying }
ANSlangInliner >> shouldInline: aMessageNode [
	
	| methodToInline |
	(self selectorTranslatedAsMacro includes: aMessageNode selector) ifTrue: [ ^ false ].
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
	
	"Do not inline inside assertions"
	aMessageNode selector = #assert: ifTrue: [ ^ self ].
	super visitMessageNode: aMessageNode
]
