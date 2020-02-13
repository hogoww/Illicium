Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'members'
	],
	#category : #'ASTC-Core-Nodes'
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
	aMember parent: self.
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
	someVariableDeclarations do: [ :each | each parent: self ].
	members := someVariableDeclarations
]
