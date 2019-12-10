Class {
	#name : #ASTCCastOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Gen-Nodes'
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
