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

{ #category : #testing }
ASTCDeclaration >> acceptVisitor: aVisitor [
	aVisitor visitDeclaration: self
]

{ #category : #accessing }
ASTCDeclaration >> id [
	^ id
]

{ #category : #accessing }
ASTCDeclaration >> id: anId [
	id := anId
]

{ #category : #testing }
ASTCDeclaration >> isDeclaration [
	^ true
]
