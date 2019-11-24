Class {
	#name : #ASTCSlangTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #running }
ASTCSlangTranslationTest >> setUp [
	super setUp.
	translator := ASTCSlangTranslator new
]
