Class {
	#name : #ASTCFunctionCall,
	#superclass : #ASTCExpression,
	#instVars : [
		'id',
		'arguments'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCFunctionCall >> = aFunctionCall [
	super = aFunctionCall
		ifFalse: [ ^ false ].
	id = aFunctionCall id
		ifFalse: [ ^ false ].
	arguments = aFunctionCall arguments
		ifFalse: [ ^ false ].
	^ true
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
	^ arguments
]

{ #category : #accessing }
ASTCFunctionCall >> arguments: someExpressions [
	someExpressions do: [ :each | each parent: self ].
	arguments := someExpressions
]

{ #category : #accessing }
ASTCFunctionCall >> id [
	^ id
]

{ #category : #accessing }
ASTCFunctionCall >> id: anId [
	anId parent: self.
	id := anId
]

{ #category : #accessing }
ASTCFunctionCall >> initialize [
	arguments := OrderedCollection new
]

{ #category : #testing }
ASTCFunctionCall >> isFunctionCall [
	^ true
]
