Class {
	#name : #ASTCStructAccessPointerOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCStructAccessPointerOperator >> = aStructAccessPointerOperator [
	super = aStructAccessPointerOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCStructAccessPointerOperator >> acceptVisitor: aVisitor [
	aVisitor visitStructAccessPointerOperator: self
]

{ #category : #testing }
ASTCStructAccessPointerOperator >> indexAt: anExpression [
	^ ASTCIndexerOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #testing }
ASTCStructAccessPointerOperator >> isStructAccessPointerOperator [
	^ true
]
