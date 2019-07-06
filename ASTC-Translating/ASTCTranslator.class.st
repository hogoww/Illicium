Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'methodTranslator',
		'replacementClasses'
	],
	#category : #'ASTC-Translating-overviewers'
}

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aClass [
	^ replacementClasses at: aClass asSymbol
]

{ #category : #initialization }
ASTCTranslator >> initialize [
	replacementClasses := Dictionary new
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: ASTCVoid put: ASTCVoid;
		at: ASTCInterpreterProxy put: ASTCVirtualMachineProxy;
		yourself
]

{ #category : #initialization }
ASTCTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #initialization }
ASTCTranslator >> replacementClasses: aDictionnary [
	^ replacementClasses := aDictionnary
]
