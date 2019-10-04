Class {
	#name : #ASTCIdentifier,
	#superclass : #ASTCExpression,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCIdentifier >> id [
	^ id
]

{ #category : #accessors }
ASTCIdentifier >> id: anId [
	id := anId
]
