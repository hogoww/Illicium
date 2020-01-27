Class {
	#name : #ASTCVariableDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'init'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCVariableDefinition >> = aVariableDefinition [
  super = aVariableDefinition ifFalse: [ ^false ].
  init = aVariableDefinition init ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCVariableDefinition >> acceptVisitor: aVisitor [
  aVisitor visitVariableDefinition: self
]

{ #category : #accessing }
ASTCVariableDefinition >> init [
  ^init
]

{ #category : #accessing }
ASTCVariableDefinition >> init: anInit [
  anInit ifNotNil: [ anInit parent: self ].
  init := anInit
]

{ #category : #testing }
ASTCVariableDefinition >> isVariableDefinition [
  ^true
]
