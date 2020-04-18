Class {
	#name : #ASTCLogicalNotOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCLogicalNotOperator >> = aLogicalNotOperator [
	super = aLogicalNotOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCLogicalNotOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitLogicalNotOperator: self
]

{ #category : #testing }
ASTCLogicalNotOperator >> isLogicalNotOperator [
	^ true
]
