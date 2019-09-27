Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'members'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCStructureDefinition >> members [
	^ members
]

{ #category : #accessors }
ASTCStructureDefinition >> members: aMembers [
	aMembers parent: self.
	^ members := aMembers
]
