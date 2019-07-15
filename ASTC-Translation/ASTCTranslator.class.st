Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aClass [
	^ replacementClasses at: aClass ifAbsent:[ ^ASTCUserClass  ]."unknown type for now"
]

{ #category : #initialization }
ASTCTranslator >> initialize [
	classTranslator := ASTCClassTranslator new
		mainTranslator: self;
		yourself.
	replacementClasses := Dictionary new
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: ASTCUserClass put: ASTCUserClass;
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
