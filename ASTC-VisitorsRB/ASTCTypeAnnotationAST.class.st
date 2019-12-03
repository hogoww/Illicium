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
	^ inferer getMethodNodeOf: aMethodNode
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

	type := ASTCTypeChecker checkThatType: 	phineasTypes asPharoType for: aNode using: inferer.
		
	self atNewPropertyPut: type -> phineasTypes for: aNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArgumentNode: anArgumentNode [
	super visitArgumentNode: anArgumentNode.
	self typeThatNode: anArgumentNode.
	^ anArgumentNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitAssignmentNode: anAssignementNode [
	super visitAssignmentNode: anAssignementNode.
	self typeThatNode: anAssignementNode.
	^ anAssignementNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitGlobalNode: aGlobalNode [
	super visitGlobalNode: aGlobalNode.
	self typeThatNode: aGlobalNode.
	^ aGlobalNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitInstanceVariableNode: anInstanceVariableNode [
	super visitInstanceVariableNode: anInstanceVariableNode.
	self typeThatNode: anInstanceVariableNode.
	^ anInstanceVariableNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralNode: aLiteralNode [
	super visitLiteralNode: aLiteralNode.
	self typeThatNode: aLiteralNode.
	^aLiteralNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMessageNode: aMessageNode [
	super visitMessageNode: aMessageNode.
	self typeThatNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMethodNode: aMethodNode [
	"The type inferencer doesn't type some methods, such as primitives."
	"The methodTypeDispatcher tells me if he did, in fact, type this method"
	(self wasMethodTyped: aMethodNode)
		ifTrue: [ super visitMethodNode: aMethodNode	"walk the method's ast" ].
			
	self typeThatNode: aMethodNode.
	^ aMethodNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSelfNode: aSelfNode [
	super visitSelfNode: aSelfNode.
	self typeThatNode: aSelfNode.
	^ aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitTemporaryNode: aTemporaryNode [
	super visitTemporaryNode: aTemporaryNode.
	self typeThatNode: aTemporaryNode.
	^ aTemporaryNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> wasMethodTyped: aMethodNode [
	self assert: aMethodNode isMethod.
	^(self getMethodType: aMethodNode) accept: methodTypeDispatcher
]
