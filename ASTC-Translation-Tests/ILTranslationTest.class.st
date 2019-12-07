Class {
	#name : #ILTranslationTest,
	#superclass : #TestCase,
	#instVars : [
		'translator',
		'pluginClass'
	],
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #running }
ILTranslationTest >> setUp [
	super setUp.
	translator := ASTCTranslator new
]

{ #category : #tests }
ILTranslationTest >> translateMethod: aSelector [
	^ translator translateMethod: aSelector fromClass: pluginClass
]
