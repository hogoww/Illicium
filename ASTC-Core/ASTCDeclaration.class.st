Class {
	#name : #ASTCDeclaration,
	#superclass : #ASTCNode,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCDeclaration >> = aDeclaration [
	super = aDeclaration
		ifFalse: [ ^ false ].
	id = aDeclaration id
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCDeclaration >> acceptVisitor: aVisitor [
	^ aVisitor visitDeclaration: self
]

{ #category : #accessing }
ASTCDeclaration >> id [
	^ id
]

{ #category : #accessing }
ASTCDeclaration >> id: anId [
	anId ifNotNil: [ anId parent: self ].
	id := anId
]

{ #category : #testing }
ASTCDeclaration >> isDeclaration [
	^ true
]
