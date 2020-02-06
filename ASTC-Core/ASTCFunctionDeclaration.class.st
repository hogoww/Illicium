Class {
	#name : #ASTCFunctionDeclaration,
	#superclass : #ASTCDeclaration,
	#instVars : [
		'qualifiers',
		'type',
		'parameters'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCFunctionDeclaration >> = aFunctionDeclaration [
	super = aFunctionDeclaration
		ifFalse: [ ^ false ].
	qualifiers = aFunctionDeclaration qualifiers
		ifFalse: [ ^ false ].
	type = aFunctionDeclaration type
		ifFalse: [ ^ false ].
	parameters = aFunctionDeclaration parameters
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCFunctionDeclaration >> acceptVisitor: aVisitor [
	aVisitor visitFunctionDeclaration: self
]

{ #category : #accessing }
ASTCFunctionDeclaration >> addParameter: aParameter [
	aParameter parent: self.
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
	someVariableDeclarations do: [ :each | each parent: self ].
	parameters := someVariableDeclarations
]

{ #category : #accessing }
ASTCFunctionDeclaration >> qualifiers [
	^ qualifiers
]

{ #category : #accessing }
ASTCFunctionDeclaration >> qualifiers: aQualifiers [
	qualifiers := aQualifiers
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type [
	^ type
]

{ #category : #accessing }
ASTCFunctionDeclaration >> type: aType [
	aType ifNotNil: [ aType parent: self ].
	type := aType
]
