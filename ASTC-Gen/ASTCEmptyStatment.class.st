Class {
	#name : #ASTCEmptyStatment,
	#superclass : #ASTCStatement,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCEmptyStatment >> = anEmptyStatment [
	super = anEmptyStatment
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCEmptyStatment >> acceptVisitor: aVisitor [
	aVisitor visitEmptyStatment: self
]

{ #category : #testing }
ASTCEmptyStatment >> isEmptyStatment [
	^ true
]
