Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCDeclaration >> id [
	^ id
]

{ #category : #accessors }
ASTCDeclaration >> id: anId [
	anId parent: self.
	id := anId
]
