Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'body'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCFunctionDefinition >> = aFunctionDefinition [
  super = aFunctionDefinition ifFalse: [ ^false ].
  body = aFunctionDefinition body ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCFunctionDefinition >> acceptVisitor: aVisitor [
  aVisitor visitFunctionDefinition: self
]

{ #category : #accessing }
ASTCFunctionDefinition >> body [
  ^body
]

{ #category : #accessing }
ASTCFunctionDefinition >> body: aBody [
  aBody ifNotNil: [ aBody parent: self ].
  body := aBody
]

{ #category : #testing }
ASTCFunctionDefinition >> isFunctionDefinition [
  ^true
]
