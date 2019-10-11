Class {
	#name : #ASTCIlliciumTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #running }
ASTCIlliciumTranslationTest >> setUp [
	super setUp.
	translator := ASTCTranslator new
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateBrokenPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu:= translator translateClass: ILBrokenPlugin.
	^ cu
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateRandomClass [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateClass: RandomTestClass.
	^ cu
]
