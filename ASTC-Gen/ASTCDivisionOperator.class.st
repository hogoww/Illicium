Class {
	#name : #ASTCDivisionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDivisionOperator >> = aDivisionOperator [
	super = aDivisionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCDivisionOperator >> acceptVisitor: aVisitor [
	aVisitor visitDivisionOperator: self
]

{ #category : #testing }
ASTCDivisionOperator >> isDivisionOperator [
	^ true
]
