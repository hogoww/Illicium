Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDeclaration >> = aDeclaration [
	super = aDeclaration
		ifFalse: [ ^ false ].
	id = aDeclaration id
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #accessing }
ASTCDeclaration >> id [
	^ id
]

{ #category : #accessing }
ASTCDeclaration >> id: anId [
	anId parent: self.
	id := anId
]

{ #category : #testing }
ASTCDeclaration >> isDeclaration [
	^ true
]
