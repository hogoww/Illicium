Class {
	#name : #ASTCDoWhile,
	#superclass : #ASTCAbstractWhile,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDoWhile >> = aDoWhile [
	super = aDoWhile
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCDoWhile >> isDoWhile [
	^ true
]
