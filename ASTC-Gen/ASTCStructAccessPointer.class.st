Class {
	#name : #ASTCStructAccessPointer,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Gen-Nodes-Operators'
}

{ #category : #testing }
ASTCStructAccessPointer >> = aStructAccessPointer [
	super = aStructAccessPointer
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCStructAccessPointer >> acceptVisitor: aVisitor [
	aVisitor visitStructAccessPointer: self
]

{ #category : #testing }
ASTCStructAccessPointer >> isStructAccessPointer [
	^ true
]
