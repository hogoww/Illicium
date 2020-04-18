Class {
	#name : #ASTCDoWhile,
	#superclass : #ASTCAbstractWhile,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCDoWhile >> = aDoWhile [
	super = aDoWhile
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCDoWhile >> acceptVisitor: aVisitor [
	^ aVisitor visitDoWhile: self
]

{ #category : #testing }
ASTCDoWhile >> isDoWhile [
	^ true
]
