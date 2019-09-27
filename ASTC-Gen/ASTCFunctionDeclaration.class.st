Class {
	#name : #ASTCFunctionDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type',
		'parameters'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCFunctionDeclaration >> parameters [
	^ parameters
]

{ #category : #accessors }
ASTCFunctionDeclaration >> parameters: aParameters [
	aParameters parent: self.
	^ parameters := aParameters
]

{ #category : #accessors }
ASTCFunctionDeclaration >> type [
	^ type
]

{ #category : #accessors }
ASTCFunctionDeclaration >> type: aType [
	aType parent: self.
	^ type := aType
]
