Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'ASTC-Translating-overviewers'
}

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aClass [
	^ replacementClasses at: aClass ifAbsent:[ ^ASTCVoid  ]."unknown type for now"
]

{ #category : #initialization }
ASTCTranslator >> initialize [
	classTranslator := ASTCClassTranslator new
		mainTranslator: self;
		yourself.
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
