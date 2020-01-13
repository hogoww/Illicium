Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration',
		'comment'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDefinition >> = aDefinition [
  super = aDefinition ifFalse: [ ^false ].
  declaration = aDefinition declaration ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCDefinition >> acceptVisitor: aVisitor [
  aVisitor visitDefinition: self
]

{ #category : #accessing }
ASTCDefinition >> comment [
	^ comment
]

{ #category : #accessing }
ASTCDefinition >> comment: anObject [
	comment := anObject
]

{ #category : #accessing }
ASTCDefinition >> declaration [
  ^declaration
]

{ #category : #accessing }
ASTCDefinition >> declaration: aDeclaration [
  aDeclaration parent: self.
  declaration := aDeclaration
]

{ #category : #testing }
ASTCDefinition >> isDefinition [
  ^true
]
