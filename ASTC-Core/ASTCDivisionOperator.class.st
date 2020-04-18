Class {
	#name : #ASTCDivisionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCDivisionOperator >> = aDivisionOperator [
	super = aDivisionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCDivisionOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitDivisionOperator: self
]

{ #category : #testing }
ASTCDivisionOperator >> isDivisionOperator [
	^ true
]
