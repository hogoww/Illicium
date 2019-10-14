Class {
	#name : #ASTCStatement,
	#superclass : #ASTCNode,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCStatement >> = aStatement [
	super = aStatement
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCStatement >> isStatement [
	^ true
]
