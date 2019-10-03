Class {
	#name : #ASTCTypeAnnotationAST,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer',
		'methodType',
		'methodTypeDispatcher',
		'aPIMethodInterpreter'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #accessing }
ASTCTypeAnnotationAST class >> property [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #accessing }
ASTCTypeAnnotationAST >> inferer [
	^inferer
	
]

{ #category : #accessing }
ASTCTypeAnnotationAST >> inferer: aPhineasInferer [
	inferer:=aPhineasInferer.
	
]

{ #category : #initialization }
ASTCTypeAnnotationAST >> initialize [
	super initialize.
	methodTypeDispatcher := PIIsMethodTypeInterpreted new.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> typeThatNode: aNode [
	| types |
	types := inferer typeOfNode: aNode.
"	(types isEmpty and: [ aNode selector beginsWith: #primitive ])
		ifTrue: [ ^ SmallInteger ]."
	types size < 1
		ifTrue: [ Error signal: 'The type inferencer had no results for ' , aNode asString ].
	types size > 1
		ifTrue: [ Error signal: 'The type inferencer had too many results' , aNode asString ].
	self atNewPropertyPut: types for: aNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArgumentNode: anArgumentNode [
	self typeThatNode: anArgumentNode.
	super visitArgumentNode: anArgumentNode.
	^ anArgumentNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitGlobalNode: aGlobalNode [
	self typeThatNode: aGlobalNode.
	super visitGlobalNode: aGlobalNode.
	^ aGlobalNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitInstanceVariableNode: anInstanceVariableNode [
	self typeThatNode: anInstanceVariableNode.
	super visitInstanceVariableNode: anInstanceVariableNode.
	^ anInstanceVariableNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralNode: aLiteralNode [
	self typeThatNode: aLiteralNode.
	super visitLiteralNode: aLiteralNode.
	^aLiteralNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMessageNode: aMessageNode [
	| type |
	type := inferer typeOfNode: aMessageNode.
	self atNewPropertyPut: type
		for: aMessageNode.
	super visitMessageNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMethodNode: aMethodNode [
	self typeThatNode: aMethodNode.

	"The type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells me if he did, in fact, type this method"
	(self wasMethodTyped: aMethodNode)
		ifTrue: [ super visitMethodNode: aMethodNode	"walk the method's ast" ].
	^ aMethodNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSelfNode: aSelfNode [
	self typeThatNode: aSelfNode.
	super visitSelfNode: aSelfNode.
	^ aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitTemporaryNode: aTemporaryNode [
	self typeThatNode: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.
	^ aTemporaryNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> wasMethodTyped: aMethodNode [
	self assert: aMethodNode isMethod.
	^(inferer getMethodNodeOf: aMethodNode) accept: methodTypeDispatcher
]
