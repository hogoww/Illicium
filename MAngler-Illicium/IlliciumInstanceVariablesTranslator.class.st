Class {
	#name : #IlliciumInstanceVariablesTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'MAngler-Illicium-Translation'
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
	| instVars cu |
	self flag:#notGood.
	instVars := aClass allInstVarNames select:[:aVarName| aVarName ~= #moduleName and:[ aVarName ~= #translatedMethodCache ]].
	
	cu := ASTCCompilationUnit new.
	instVars do: [:aVarName| cu add: (self translateInstanceVariable: aVarName of: aClass) ].
	
	^ cu
]
