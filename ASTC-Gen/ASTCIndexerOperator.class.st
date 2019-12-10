Class {
	#name : #ASTCIndexerOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCIndexerOperator >> = anIndexerOperator [
	super = anIndexerOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCIndexerOperator >> acceptVisitor: aVisitor [
	aVisitor visitIndexerOperator: self
]

{ #category : #testing }
ASTCIndexerOperator >> isIndexerOperator [
	^ true
]
