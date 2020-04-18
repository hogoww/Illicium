Class {
	#name : #ASTCType,
	#superclass : #ASTCNode,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCType >> = aType [
	super = aType
		ifFalse: [ ^ false ].
	type = aType type
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCType >> acceptVisitor: aVisitor [
	^ aVisitor visitType: self
]

{ #category : #testing }
ASTCType >> isType [
	^ true
]

{ #category : #accessing }
ASTCType >> type [
	^ type
]

{ #category : #accessing }
ASTCType >> type: aType [
	type := aType
]
