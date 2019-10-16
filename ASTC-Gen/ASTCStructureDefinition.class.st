Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'members'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCStructureDefinition >> = aStructureDefinition [
	super = aStructureDefinition
		ifFalse: [ ^ false ].
	members = aStructureDefinition members
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCStructureDefinition >> acceptVisitor: aVisitor [
	aVisitor visitStructureDefinition: self
]

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
	members := someVariableDeclarations
]
