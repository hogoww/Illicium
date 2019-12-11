Class {
	#name : #ASTCCastOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCCastOperator >> = aCastOperator [
	super = aCastOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCCastOperator >> acceptVisitor: aVisitor [
	aVisitor visitCastOperator: self
]

{ #category : #testing }
ASTCCastOperator >> isCastOperator [
	^ true
]
