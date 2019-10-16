Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCFunctionDefinition >> = aFunctionDefinition [
	super = aFunctionDefinition
		ifFalse: [ ^ false ].
	body = aFunctionDefinition body
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #accessing }
ASTCFunctionDefinition >> body [
	^ body
]

{ #category : #accessing }
ASTCFunctionDefinition >> body: aBody [
	body := aBody
]

{ #category : #testing }
ASTCFunctionDefinition >> isFunctionDefinition [
	^ true
]
