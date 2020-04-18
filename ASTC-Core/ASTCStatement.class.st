Class {
	#name : #ASTCStatement,
	#superclass : #ASTCNode,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCStatement >> = aStatement [
	super = aStatement
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCStatement >> acceptVisitor: aVisitor [
	^ aVisitor visitStatement: self
]

{ #category : #testing }
ASTCStatement >> isStatement [
	^ true
]
