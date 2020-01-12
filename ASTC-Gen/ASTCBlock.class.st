Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCBlock >> = aBlock [
  super = aBlock ifFalse: [ ^false ].
  statements = aBlock statements ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCBlock >> acceptVisitor: aVisitor [
  aVisitor visitBlock: self
]

{ #category : #accessing }
ASTCBlock >> initialize [
  statements := OrderedCollection new
]

{ #category : #testing }
ASTCBlock >> isBlock [
  ^true
]

{ #category : #accessing }
ASTCBlock >> statements [
  ^statements
]

{ #category : #accessing }
ASTCBlock >> statements: someStatements [
  someStatements do: [:each |  each parent: self ].
  statements := someStatements
]
