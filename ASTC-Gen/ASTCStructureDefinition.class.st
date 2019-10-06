Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'members'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCStructureDefinition >> addMember: aMember [
	members add: aMember
]

{ #category : #accessing }
ASTCStructureDefinition >> members [
	^ members
]

{ #category : #accessing }
ASTCStructureDefinition >> members: aCollectionOfVariableDeclarations [
	aCollectionOfVariableDeclarations parent: self.
	members := aCollectionOfVariableDeclarations
]
