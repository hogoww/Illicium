Class {
	#name : #ASTCAdditionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCAdditionOperator >> = anAdditionOperator [
	super = anAdditionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCAdditionOperator >> acceptVisitor: aVisitor [
	aVisitor visitAdditionOperator: self
]

{ #category : #testing }
ASTCAdditionOperator >> isAdditionOperator [
	^ true
]
