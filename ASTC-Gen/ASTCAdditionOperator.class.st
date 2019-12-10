Class {
	#name : #ASTCAdditionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCAdditionOperator >> = anAdditionOperator [
	super = anAdditionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCAdditionOperator >> acceptVisitor: aVisitor [
	aVisitor visitAdditionOperator: self
]

{ #category : #testing }
ASTCAdditionOperator >> isAdditionOperator [
	^ true
]
