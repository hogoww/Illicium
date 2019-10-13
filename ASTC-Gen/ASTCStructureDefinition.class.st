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
ASTCStructureDefinition >> initialize [
	members := OrderedCollection new
]

{ #category : #testing }
ASTCStructureDefinition >> isStructureDefinition [
	^ true
]

{ #category : #accessing }
ASTCStructureDefinition >> members [
	^ members
]

{ #category : #accessing }
ASTCStructureDefinition >> members: someVariableDeclarations [
	someVariableDeclarations parent: self.
	members := someVariableDeclarations
]
