Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCFunctionDefinition >> body [
	^ body
]

{ #category : #accessing }
ASTCFunctionDefinition >> body: aBody [
	aBody parent: self.
	body := aBody
]

{ #category : #testing }
ASTCFunctionDefinition >> isFunctionDefinition [
	^ true
]
