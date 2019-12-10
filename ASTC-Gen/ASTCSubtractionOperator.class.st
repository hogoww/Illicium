Class {
	#name : #ASTCSubtractionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCSubtractionOperator >> = aSubtractionOperator [
	super = aSubtractionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCSubtractionOperator >> acceptVisitor: aVisitor [
	aVisitor visitSubtractionOperator: self
]

{ #category : #testing }
ASTCSubtractionOperator >> isSubtractionOperator [
	^ true
]
