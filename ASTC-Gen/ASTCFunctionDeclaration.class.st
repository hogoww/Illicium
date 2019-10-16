Class {
	#name : #ASTCFunctionDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'type',
		'parameters'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCFunctionDeclaration >> = aFunctionDeclaration [
	super = aFunctionDeclaration
		ifFalse: [ ^ false ].
	type = aFunctionDeclaration type
		ifFalse: [ ^ false ].
	parameters = aFunctionDeclaration parameters
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #accessing }
ASTCFunctionDeclaration >> addParameter: aParameter [
	parameters add: aParameter
]

{ #category : #accessing }
ASTCFunctionDeclaration >> initialize [
	parameters := OrderedCollection new
]

{ #category : #testing }
ASTCFunctionDeclaration >> isFunctionDeclaration [
	^ true
]

{ #category : #accessing }
ASTCFunctionDeclaration >> parameters [
	^ parameters
]

{ #category : #accessing }
ASTCFunctionDeclaration >> parameters: someVariableDeclarations [
	parameters := someVariableDeclarations
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type [
	^ type
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type: aType [
	type := aType
]
