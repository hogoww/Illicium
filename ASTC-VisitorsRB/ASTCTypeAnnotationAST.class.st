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
ASTCTypeAnnotationAST >> visitArgumentNode: anArgumentNode [
	| type |
	type := inferer typeOfNode: anArgumentNode.
	self atNewPropertyPut: type
		for: anArgumentNode.
	super visitArgumentNode: anArgumentNode.
	^anArgumentNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitGlobalNode: aGlobalNode [
	| type |
	type := inferer typeOfNode: aGlobalNode.
	self atNewPropertyPut: type
		for: aGlobalNode.
	super visitGlobalNode: aGlobalNode.
	^aGlobalNode.
	
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitInstanceVariableNode: aInstanceVariableNode [
	| type |
	type := inferer typeOfNode: aInstanceVariableNode.
	self atNewPropertyPut: type
		for: aInstanceVariableNode.
	super visitInstanceVariableNode: aInstanceVariableNode.
	^aInstanceVariableNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralNode: aLiteralNode [
	| type |
	type := inferer typeOfNode: aLiteralNode.
	self atNewPropertyPut: type
		for: aLiteralNode .
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
	| type |
	type := inferer typeOfNode:aMethodNode.
	self atNewPropertyPut: type
		for: aMethodNode.
	
	"The type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells me if he did, in fact, type this method"
	(self wasMethodVisited: aMethodNode) ifTrue:[ 
		super visitMethodNode: aMethodNode."walk the method's ast"
	].
	^aMethodNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSelfNode: aSelfNode [
	| type |
	type := self inferer typeOfNode: aSelfNode.
	self atNewPropertyPut: type for: aSelfNode.
	super visitSelfNode: aSelfNode.
	^ aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitTemporaryNode: aTemporaryNode [
	| type |
	type := inferer typeOfNode: aTemporaryNode.
	self atNewPropertyPut: type for: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.
	^ aTemporaryNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> wasMethodVisited: aMethodNode [
	self assert: aMethodNode isMethod.
	^(inferer getMethodNodeOf: aMethodNode) accept: methodTypeDispatcher
]
