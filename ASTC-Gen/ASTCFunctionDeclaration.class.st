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
ASTCFunctionDeclaration >> parameters: aCollectionOfVariableDeclarations [
	aCollectionOfVariableDeclarations parent: self.
	^ parameters := aCollectionOfVariableDeclarations
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
