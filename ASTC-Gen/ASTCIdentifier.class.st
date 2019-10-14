Class {
	#name : #ASTCIdentifier,
	#superclass : #ASTCExpression,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCIdentifier >> = anIdentifier [
	super = anIdentifier
		ifFalse: [ ^ false ].
	id = anIdentifier id
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #accessing }
ASTCIdentifier >> id [
	^ id
]

{ #category : #accessing }
ASTCIdentifier >> id: anId [
	id := anId
]

{ #category : #testing }
ASTCIdentifier >> isIdentifier [
	^ true
]
