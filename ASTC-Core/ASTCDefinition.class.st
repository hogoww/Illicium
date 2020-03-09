Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCDefinition >> = aDefinition [
	super = aDefinition
		ifFalse: [ ^ false ].
	declaration = aDefinition declaration
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCDefinition >> acceptVisitor: aVisitor [
	aVisitor visitDefinition: self
]

{ #category : #accessing }
ASTCDefinition >> declaration [
	^ declaration
]

{ #category : #accessing }
ASTCDefinition >> declaration: aDeclaration [
	aDeclaration ifNotNil: [ aDeclaration parent: self ].
	declaration := aDeclaration
]

{ #category : #testing }
ASTCDefinition >> isDefinition [
	^ true
]
