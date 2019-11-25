Class {
	#name : #ASTCTypeAnnotationAST,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer',
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
ASTCTypeAnnotationAST >> getMethodType: aMethodNode [ 
	^ (inferer getMethodNodeOf: aMethodNode) 
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
	| phineasTypes type |
	phineasTypes := inferer phineasTypeOfNode: aNode.
	
	type := ASTCTypeChecker checkThatType: phineasTypes concreteClasses for: aNode.
		
	self atNewPropertyPut: type for: aNode
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
	super visitMessageNode: aMessageNode."super visit before, so receivers are typed in case of a problem"
	self typeThatNode: aMessageNode.
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
	^(self getMethodType: aMethodNode) accept: methodTypeDispatcher
]
