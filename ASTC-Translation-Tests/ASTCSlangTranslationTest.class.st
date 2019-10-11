Class {
	#name : #ASTCSlangTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #running }
ASTCSlangTranslationTest >> setUp [
	super setUp.
	translator := ASTCSlangTranslator new
]
