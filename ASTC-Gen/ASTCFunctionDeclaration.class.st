Class {
	#name : #ASTCFunctionDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type',
		'parameters'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCFunctionDeclaration >> addParameter: aParameter [
	parameters add: aParameter
]

{ #category : #accessing }
ASTCFunctionDeclaration >> initialize [
	parameters := OrderedCollection new
]

{ #category : #accessing }
ASTCFunctionDeclaration >> parameters [
	^ parameters
]

{ #category : #accessing }
ASTCFunctionDeclaration >> parameters: someVariableDeclarations [
	someVariableDeclarations parent: self.
	parameters := someVariableDeclarations
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type [
	^ type
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type: aType [
	aType parent: self.
	type := aType
]
