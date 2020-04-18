Class {
	#name : #ASTCAddressOfOperator,
	#superclass : #ASTCUnaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCAddressOfOperator >> = anAddressOfOperator [
	super = anAddressOfOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCAddressOfOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitAddressOfOperator: self
]

{ #category : #testing }
ASTCAddressOfOperator >> isAddressOfOperator [
	^ true
]
