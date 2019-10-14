Class {
	#name : #ASTCInstanceVariablesTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'ASTC-Translation-class-state'
}

{ #category : #accessing }
ASTCInstanceVariablesTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #accessing }
ASTCInstanceVariablesTranslator >> classTranslator: aClassTranslator [
	classTranslator := aClassTranslator
]

{ #category : #translation }
ASTCInstanceVariablesTranslator >> translateInstanceVariable: anIVName of: aClass [
	| ivType |
	ivType := classTranslator typeOfVariable: anIVName ofClass: aClass.
	^ ASTCVariableDeclaration new
		id:
			(ASTCIdentifier new
				id: anIVName;
				yourself);
		type:
			(ASTCType new
				type: ivType;
				yourself);
		yourself

]

{ #category : #translation }
ASTCInstanceVariablesTranslator >> translateInstanceVariablesOf: aClass [
	| instVar |
	self flag:#notGood.
	instVar := aClass allInstVarNames select:[:aVarName| aVarName ~=#moduleName and:[ aVarName ~= #translatedMethodCache]] .

	^instVar  collect: [:aVarName|
		self translateInstanceVariable: aVarName of: aClass  ]
]
