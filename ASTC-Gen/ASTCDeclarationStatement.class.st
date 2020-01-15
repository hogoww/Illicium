Class {
	#name : #ASTCDeclarationStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCDeclarationStatement >> = aDeclarationStatement [
  super = aDeclarationStatement ifFalse: [ ^false ].
  declaration = aDeclarationStatement declaration ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCDeclarationStatement >> acceptVisitor: aVisitor [
  aVisitor visitDeclarationStatement: self
]

{ #category : #accessing }
ASTCDeclarationStatement >> declaration [
  ^declaration
]

{ #category : #accessing }
ASTCDeclarationStatement >> declaration: aDeclaration [
  aDeclaration ifNotNil: [ aDeclaration parent: self ].
  declaration := aDeclaration
]

{ #category : #testing }
ASTCDeclarationStatement >> isDeclarationStatement [
  ^true
]
