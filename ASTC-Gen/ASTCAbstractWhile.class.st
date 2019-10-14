Class {
	#name : #ASTCAbstractWhile,
	#superclass : #ASTCLoop,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCAbstractWhile >> = anAbstractWhile [
	super = anAbstractWhile
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCAbstractWhile >> isAbstractWhile [
	^ true
]
