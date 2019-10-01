Class {
	#name : #ASTCFunctionCall,
	#superclass : #ASTCExpression,
	#instVars : [
		'id',
		'arguments'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCFunctionCall >> arguments [
	^ arguments
]

{ #category : #accessors }
ASTCFunctionCall >> arguments: aCollectionOfExpressions [
	aCollectionOfExpressions parent: self.
	^ arguments := aCollectionOfExpressions
]

{ #category : #accessors }
ASTCFunctionCall >> id [
	^ id
]

{ #category : #accessors }
ASTCFunctionCall >> id: anId [
	anId parent: self.
	^ id := anId
]
