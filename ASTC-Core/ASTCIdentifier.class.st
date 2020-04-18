Class {
	#name : #ASTCIdentifier,
	#superclass : #ASTCExpression,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCIdentifier >> = anIdentifier [
	super = anIdentifier
		ifFalse: [ ^ false ].
	id = anIdentifier id
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCIdentifier >> acceptVisitor: aVisitor [
	^ aVisitor visitIdentifier: self
]

{ #category : #accessing }
ASTCIdentifier >> id [
	^ id
]

{ #category : #testing }
ASTCIdentifier >> isIdentifier [
	^ true
]
