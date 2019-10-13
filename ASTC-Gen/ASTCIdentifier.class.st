Class {
	#name : #ASTCIdentifier,
	#superclass : #ASTCExpression,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

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
