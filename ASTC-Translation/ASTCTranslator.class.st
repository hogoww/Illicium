Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #'translation-api' }
ASTCTranslator class >> translateClass: aClass [
	^ self new translateClass: aClass
]

{ #category : #'translation-api' }
ASTCTranslator class >> translateExpression: anExpression [
	^ self new translateExpression: anExpression
]

{ #category : #'translation-api' }
ASTCTranslator class >> translateMethod: aCompiledMethod [ 
	^ self new translateMethod: aCompiledMethod
]

{ #category : #'translation-api' }
ASTCTranslator class >> translateMethod: aSelector fromClass: aClass [
	^ self new translateMethod: aSelector fromClass: aClass
]

{ #category : #accessors }
ASTCTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #accessors }
ASTCTranslator >> classTranslator: aClassTranslator [
	aClassTranslator mainTranslator: self.
	classTranslator := aClassTranslator
]

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aClass [
	^ replacementClasses at: aClass ifAbsent:[ ^ASTCUserClass  ]."unknown type for now"
]

{ #category : #initialization }
ASTCTranslator >> initialize [
	classTranslator := ASTCIlliciumClassTranslator new
		mainTranslator: self;
		yourself.
	replacementClasses := Dictionary new
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: String put: ASTCString;
		at: Array put: ASTCArray;
		at: ASTCInterpreterProxy put: ASTCVirtualMachineProxy;
		at: ASTCUserClass put: ASTCUserClass;
		yourself
]

{ #category : #accessors }
ASTCTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
ASTCTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]

{ #category : #'translation-api' }
ASTCTranslator >> translateClass: aClass [
	^ classTranslator translateClass: aClass
]

{ #category : #'translation-api' }
ASTCTranslator >> translateExpression: anExpression [
	^ classTranslator translateExpression: anExpression
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aCompiledMethod [
	^ classTranslator translateMethod: aCompiledMethod 
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aSelector fromClass: aClass [
	^ classTranslator translateMethod: aSelector fromClass: aClass
]
