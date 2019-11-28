Class {
	#name : #ILTranslationTest,
	#superclass : #TestCase,
	#instVars : [
		'translator'
	],
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #running }
ILTranslationTest >> setUp [
	super setUp.
	translator := ASTCTranslator new
]
