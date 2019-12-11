Class {
	#name : #ASTCExpression,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCExpression >> = anExpression [
	super = anExpression
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCExpression >> acceptVisitor: aVisitor [
	aVisitor visitExpression: self
]

{ #category : #testing }
ASTCExpression >> isExpression [
	^ true
]

{ #category : #testing }
ASTCExpression >> not [
	^ ASTCLogicalNotOperator new
		addOperand: self;
		yourself
]
