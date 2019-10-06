Class {
	#name : #ASTCFunctionCall,
	#superclass : #ASTCExpression,
	#instVars : [
		'id',
		'arguments'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCFunctionCall >> addArgument: anArgument [
	arguments add: anArgument
]

{ #category : #accessing }
ASTCFunctionCall >> arguments [
	^ arguments
]

{ #category : #accessing }
ASTCFunctionCall >> arguments: aCollectionOfExpressions [
	aCollectionOfExpressions parent: self.
	arguments := aCollectionOfExpressions
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
