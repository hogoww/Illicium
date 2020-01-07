Class {
	#name : #ASTCPhineasTypeAnnotator,
	#superclass : #ASTCTypeAnnotator,
	#instVars : [
		'methodTypeDispatcher'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #initialization }
ASTCPhineasTypeAnnotator >> initialize [
	super initialize.
	methodTypeDispatcher := PIIsMethodTypeInterpreted new.
]

{ #category : #visiting }
ASTCPhineasTypeAnnotator >> typeThatNode: aNode [
	| phineasTypes type |
	phineasTypes := inferer phineasTypeOfNode: aNode.

	type := ASTCTypeChecker checkThatType: phineasTypes asPharoType for: aNode using: inferer.
	
	self atNewPropertyPut: type -> phineasTypes for: aNode
]

{ #category : #visiting }
ASTCPhineasTypeAnnotator >> visitMethodNode: aMethodNode [
	"The Phineas type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells us if it did, in fact, type this method."
	(self wasMethodTyped: aMethodNode)
		ifTrue: ["walk the method's ast"
			super visitMethodNode: aMethodNode ]
]

{ #category : #visiting }
ASTCPhineasTypeAnnotator >> wasMethodTyped: aMethodNode [
	^ (inferer getMethodNodeOf: aMethodNode) accept: methodTypeDispatcher
]
