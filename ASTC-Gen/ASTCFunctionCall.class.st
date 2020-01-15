Class {
	#name : #ASTCFunctionCall,
	#superclass : #ASTCExpression,
	#instVars : [
		'id',
		'arguments'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #'as yet unclassified' }
ASTCFunctionCall class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	
	"Function call are kind of operators, but not really. Regardless, they have a specific associativity"
	^ #left
]

{ #category : #'as yet unclassified' }
ASTCFunctionCall class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	
	"Function call are kind of operators, but not really. Regardless, they have a specific priority"
	^ 1
]

{ #category : #testing }
ASTCFunctionCall >> = aFunctionCall [
  super = aFunctionCall ifFalse: [ ^false ].
  id = aFunctionCall id ifFalse: [ ^false ].
  arguments = aFunctionCall arguments ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCFunctionCall >> acceptVisitor: aVisitor [
  aVisitor visitFunctionCall: self
]

{ #category : #accessing }
ASTCFunctionCall >> addArgument: anArgument [
  anArgument parent: self.
  arguments add: anArgument
]

{ #category : #accessing }
ASTCFunctionCall >> arguments [
  ^arguments
]

{ #category : #accessing }
ASTCFunctionCall >> arguments: someExpressions [
  someExpressions do: [:each |  each parent: self ].
  arguments := someExpressions
]

{ #category : #accessing }
ASTCFunctionCall >> id [
  ^id
]

{ #category : #accessing }
ASTCFunctionCall >> id: anId [
  anId ifNotNil: [ anId parent: self ].
  id := anId
]

{ #category : #accessing }
ASTCFunctionCall >> initialize [
  arguments := OrderedCollection new
]

{ #category : #testing }
ASTCFunctionCall >> isFunctionCall [
  ^true
]
