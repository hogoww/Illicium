Class {
	#name : #ASTCIndexerOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCIndexerOperator >> = anIndexerOperator [
	super = anIndexerOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCIndexerOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitIndexerOperator: self
]

{ #category : #testing }
ASTCIndexerOperator >> isIndexerOperator [
	^ true
]
