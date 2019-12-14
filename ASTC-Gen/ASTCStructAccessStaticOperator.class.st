Class {
	#name : #ASTCStructAccessStaticOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCStructAccessStaticOperator >> = aStructAccessStaticOperator [
	super = aStructAccessStaticOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCStructAccessStaticOperator >> acceptVisitor: aVisitor [
	aVisitor visitStructAccessStaticOperator: self
]

{ #category : #testing }
ASTCStructAccessStaticOperator >> isStructAccessStaticOperator [
	^ true
]
