Class {
	#name : #ASTCIlliciumTranslationTest,
	#superclass : #ILTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
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
	cu debugASTCStructure.
	^ cu
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateILVMPArameter [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateClass: ILVMParameters .
	cu debugASTCStructure.
	^ cu
]

{ #category : #tests }
ASTCIlliciumTranslationTest >> testTranslateRandomClass [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu |
	cu := translator translateClass: RandomTestClass.
	cu debugASTCStructure.
	^ cu
]
