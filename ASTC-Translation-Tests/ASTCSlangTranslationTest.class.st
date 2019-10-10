Class {
	#name : #ASTCSlangTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #running }
ASTCSlangTranslationTest >> setUp [
	translator := ASTCSlangTranslator new
]

{ #category : #tests }
ASTCSlangTranslationTest >> testTranslateBrokenPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateClass: BrokenPlugin.
	^ cu
]
