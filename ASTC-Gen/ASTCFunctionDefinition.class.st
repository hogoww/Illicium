Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCFunctionDefinition >> body [
	^ body
]

{ #category : #accessors }
ASTCFunctionDefinition >> body: aBody [
	aBody parent: self.
	^ body := aBody
]
