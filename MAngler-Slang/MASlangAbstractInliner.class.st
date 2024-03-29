Class {
	#name : #MASlangAbstractInliner,
	#superclass : #RBProgramNodeVisitorCompatibility,
	#instVars : [
		'program',
		'inlinedSomething',
		'translator',
		'renamer'
	],
	#classInstVars : [
		'selectorMacros'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #testing }
MASlangAbstractInliner class >> includesSelectorTranslatedAsMacro: aSelector [ 
	"Caching the result" 
	selectorMacros ifNil: [ selectorMacros := VMPluginCodeGenerator new selectorsThatMayBeGeneratedAsMacros ].
	^ selectorMacros includes: aSelector
]

{ #category : #accessing }
MASlangAbstractInliner class >> translator: aTranslator [

	^ self new
		translator: aTranslator;
		yourself
]

{ #category : #applying }
MASlangAbstractInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [
	"Should get a copy of a method node as parameter, since it's going to modify it."
	program := aProgram.
	[
		inlinedSomething := false.
		aMethodNode acceptVisitor: self 
	] doWhileTrue: [ inlinedSomething ].
	 ^ aMethodNode
]

{ #category : #applying }
MASlangAbstractInliner >> applyOnMethodI: aMethodNode ofProgram: aProgram [	
	program := aProgram.
	inlinedSomething := true.
	[ inlinedSomething ]
	whileTrue: [  
		aMethodNode nodesDo: [:aNode|
			1halt.
			((aNode isMessage
				and: [ aProgram hasMethodNamed: aNode selector ])
					and: [ (translator class isSpecialSelector: aNode selector) ])	
				ifTrue:[ | methodToInline |	
					inlinedSomething := true.
					methodToInline := (aProgram methodNamed: aNode selector) copy.
					self renameVariablesOf: methodToInline byArguments: aNode arguments.
					self inline: methodToInline insteadOf: aNode	
					]]].
	^ aMethodNode
]

{ #category : #inlining }
MASlangAbstractInliner >> createNewBlockithStatements: nodesToInline [
	| newBlock |
	newBlock := RBBlockNode
		body:
			(RBSequenceNode new
				propertyAt: FAVariableDeclarationAnnotator propertyName
					put: FAVariableDeclarationAnnotator defaultCollection new;
				yourself).
	"each sequence node must know what to declare. In slang, nothing unless you're the body of the method"
	newBlock body statements: nodesToInline.
	^ newBlock
]

{ #category : #testing }
MASlangAbstractInliner >> handleTemporariesFrom: methodToInline inMessage: aMessageNode [
	renamer handleTemporariesFrom: methodToInline in: aMessageNode methodNode.
	renamer renameVariablesOf: methodToInline byArguments: aMessageNode arguments.
]

{ #category : #initialization }
MASlangAbstractInliner >> initialize [
	renamer := MASlangVariableRenamer new.
]

{ #category : #inlining }
MASlangAbstractInliner >> inline: aMethodNode insteadOf: aMessageNode [
	| nodesToInline |
	"We attempt to inline the nodes in different cases.
	If none match, we just replace the message with the collection of nodes."
	"General preparation for inlining"
	nodesToInline := aMethodNode statements.
	nodesToInline last isReturn
		ifTrue: [ nodesToInline add: nodesToInline removeLast value ].
 
	(self inlineIfOnlyOneNode: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoAssignment: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoReturn: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoMessage: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	(self inlineIfMultipleNodeIntoCascade: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].	
	(self inlineIfMultipleNodeIntoSequence: nodesToInline insteadOf: aMessageNode) ifTrue:[ ^ self ].
	
	
	inlinedSomething := false.
]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfMultipleNodeIntoAssignment: nodesToInline insteadOf: aMessageNode [
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
	aMessageNode parent parent: nil.
	^ true
]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfMultipleNodeIntoCascade: nodesToInline insteadOf: aMessageNode [
	aMessageNode parent isCascade ifFalse: [ ^ false ].
	
	"inlining several messages in another message is just not done, from what i've seen"
	inlinedSomething := false.
	^ true
]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfMultipleNodeIntoMessage: nodesToInline insteadOf: aMessageNode [
	aMessageNode parent isMessage ifFalse: [ ^ false ].
	
	"inlining several messages in another message is just not done, from what i've seen"
	inlinedSomething := false.
	^ true
]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfMultipleNodeIntoReturn: nodesToInline insteadOf: aMessageNode [
	| newBlock |
	aMessageNode parent isReturn ifFalse: [ ^ false ].
	newBlock := self createNewBlockithStatements: nodesToInline.
	self typeNewBlock: newBlock.

	"replacing the whole assignment"
	aMessageNode replaceWith: newBlock.
	aMessageNode parent: nil.
	^ true
]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfMultipleNodeIntoSequence: nodesToInline insteadOf: aMessageNode [
	aMessageNode parent isSequence ifFalse: [ ^ false ].
	aMessageNode parent replaceNode: aMessageNode withNodes: nodesToInline.
	aMessageNode parent: nil.
	^ true

]

{ #category : #inlining }
MASlangAbstractInliner >> inlineIfOnlyOneNode: nodesToInline insteadOf: aMessageNode [
	nodesToInline size = 1 ifFalse: [ ^ false ]. 	
	
	aMessageNode replaceWith: nodesToInline first.
	aMessageNode parent: nil.
	^ true
]

{ #category : #accessing }
MASlangAbstractInliner >> program [
	^ program
]

{ #category : #accessing }
MASlangAbstractInliner >> program: anObject [
	program := anObject
]

{ #category : #inlining }
MASlangAbstractInliner >> renamer [
	^ renamer
]

{ #category : #inlining }
MASlangAbstractInliner >> renamer: aRenamer [
	renamer := aRenamer
]

{ #category : #inlining }
MASlangAbstractInliner >> shouldInline: aMessageNode [
	^ self subclassResponsibility
]

{ #category : #accessing }
MASlangAbstractInliner >> translator [
	^ translator
]

{ #category : #accessing }
MASlangAbstractInliner >> translator: anObject [
	translator := anObject
]

{ #category : #inlining }
MASlangAbstractInliner >> typeNewBlock: newBlock [
	| typingProperty lastNode |
	
	typingProperty := FATypeAnnotator propertyName.
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
MASlangAbstractInliner >> visitMessageNode: aMessageNode [

	(self shouldInline: aMessageNode)
		ifTrue: [ 
			| methodToInline |
			inlinedSomething := true.
			methodToInline := aMessageNode receiver isSuperVariable
				                  ifTrue: [ 
				                  aMessageNode propertyAt:
					                  MASlangSuperAnnotator propertyName ]
				                  ifFalse: [ 
				                  (program methodNamed: aMessageNode selector)
					                  copy ].
			self handleTemporariesFrom: methodToInline inMessage: aMessageNode.
			self inline: methodToInline insteadOf: aMessageNode ]
		ifFalse: [ super visitMessageNode: aMessageNode ]
]

{ #category : #accessing }
MASlangAbstractInliner >> visitNode: aNode [
	"a node without parent that is not a method node, is a node that was cut out during inlining, and should not be visited anymore."
	(aNode parent isNotNil or:[ aNode isMethod ])
		ifTrue:[ ^ super visitNode: aNode ]
]
