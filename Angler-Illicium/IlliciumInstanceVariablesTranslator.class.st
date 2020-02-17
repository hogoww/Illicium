Class {
	#name : #IlliciumInstanceVariablesTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'Angler-Illicium-translation'
}

{ #category : #accessing }
IlliciumInstanceVariablesTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #accessing }
IlliciumInstanceVariablesTranslator >> classTranslator: aClassTranslator [
	classTranslator := aClassTranslator
]

{ #category : #translation }
IlliciumInstanceVariablesTranslator >> translateInstanceVariable: anIVName of: aClass [
	| ivType |
	ivType := classTranslator typeOfVariable: anIVName ofClass: aClass.
	^ ASTCVariableDeclaration new
		id: (ASTCIdentifier new
			id: anIVName;
			yourself);
		type: (ASTCType new
			type: ivType;
			yourself);
		yourself
]

{ #category : #translation }
IlliciumInstanceVariablesTranslator >> translateInstanceVariablesOf: aClass [
	| instVar |
	self flag:#notGood.
	instVar := aClass allInstVarNames select:[:aVarName| aVarName ~= #moduleName and:[ aVarName ~= #translatedMethodCache]].
	
	^ instVar collect: [:aVarName|
		self translateInstanceVariable: aVarName of: aClass ]
]
