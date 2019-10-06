Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCDeclaration >> id [
	^ id
]

{ #category : #accessing }
ASTCDeclaration >> id: anId [
	anId parent: self.
	id := anId
]
