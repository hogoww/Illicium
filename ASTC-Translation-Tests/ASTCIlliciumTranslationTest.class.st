Class {
	#name : #ASTCIlliciumTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #running }
ASTCIlliciumTranslationTest >> setUp [
	translator := ASTCTranslator new
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateBrokenPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	translator translateClass: ILBrokenPlugin
	
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateRandomClass [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	translator translateClass: RandomTestClass
]
