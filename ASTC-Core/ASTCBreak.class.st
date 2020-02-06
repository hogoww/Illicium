Class {
	#name : #ASTCBreak,
	#superclass : #ASTCStatement,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCBreak >> = aBreak [
	super = aBreak
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCBreak >> acceptVisitor: aVisitor [
	aVisitor visitBreak: self
]

{ #category : #testing }
ASTCBreak >> isBreak [
	^ true
]
