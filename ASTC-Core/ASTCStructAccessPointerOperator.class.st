Class {
	#name : #ASTCStructAccessPointerOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCStructAccessPointerOperator >> = aStructAccessPointerOperator [
	super = aStructAccessPointerOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCStructAccessPointerOperator >> acceptVisitor: aVisitor [
	aVisitor visitStructAccessPointerOperator: self
]

{ #category : #testing }
ASTCStructAccessPointerOperator >> isStructAccessPointerOperator [
	^ true
]
