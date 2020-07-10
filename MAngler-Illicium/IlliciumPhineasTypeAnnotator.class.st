"
I annotate RB ASTs with types informations coming from the Phineas type inferencer.
(gitlab.com/pharo-project/phineas)

"
Class {
	#name : #IlliciumPhineasTypeAnnotator,
	#superclass : #FATypeAnnotator,
	#instVars : [
		'methodTypeDispatcher'
	],
	#category : #'MAngler-Illicium-Analysis'
}

{ #category : #initialization }
IlliciumPhineasTypeAnnotator >> initialize [
	super initialize.
	methodTypeDispatcher := PIIsMethodTypeInterpreted new.
]

{ #category : #visiting }
IlliciumPhineasTypeAnnotator >> typeThatNode: aNode [
	| phineasTypes type |
	phineasTypes := inferer phineasTypeOfNode: aNode.

	type := IlliciumTypeChecker checkThatType: phineasTypes asPharoType for: aNode using: inferer.
	
	self flag: #dirtyFix.
	(aNode isMethod and: [ type type = aNode methodNode methodClass ])
		ifTrue: [ type := EmptyType new ].
	
	self atNewPropertyPut: type for: aNode
]

{ #category : #visiting }
IlliciumPhineasTypeAnnotator >> visitMethodNode: aMethodNode [
	"The Phineas type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells us if it did, in fact, type this method."
	(self wasMethodTyped: aMethodNode)
		ifTrue: ["walk the method's ast"
			super visitMethodNode: aMethodNode ]
]

{ #category : #visiting }
IlliciumPhineasTypeAnnotator >> wasMethodTyped: aMethodNode [
	^ (inferer getMethodNodeOf: aMethodNode) accept: methodTypeDispatcher
]
