Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #'as yet unclassified' }
ASTCTranslator class >> classTranslatorClass [
	^ ASTCIlliciumClassTranslator 
]

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
ASTCTranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: InterpreterProxy put: ASTCVirtualMachineProxy.
	replacementClasses at: ASTCInterpreterProxy put: ASTCVirtualMachineProxy.
]

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aClass [
	^ replacementClasses at: aClass ifAbsent:[ ReplacementTypeUnknownError new type:aClass ; signal ].
]

{ #category : #initialization }
ASTCTranslator >> initialize [
	classTranslator := self class classTranslatorClass new
		mainTranslator: self;
		yourself.
	"basic replacement classes"
	replacementClasses := Dictionary new
		at: Object put: ASTCObject;
		at: UndefinedObject put: ASTCUndefinedObject;
		at: SmallInteger put: ASTCSmallInteger;
		at: Boolean put: ASTCBoolean;
		at: String put: ASTCString;
		at: Array put: ASTCArray;
		yourself.
		
	self fillWithtranslatorSpecificTypes 
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
	replacementClasses at: aClass put: ASTCUserClass.
	^ classTranslator translateClass: aClass
]

{ #category : #'translation-api' }
ASTCTranslator >> translateExpression: anExpression [
	^ classTranslator translateExpression: anExpression
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aCompiledMethod [
	replacementClasses at: aCompiledMethod class put: ASTCUserClass.
	^ classTranslator translateMethod: aCompiledMethod 
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aSelector fromClass: aClass [
	replacementClasses at: aClass put: ASTCUserClass.
	^ classTranslator translateMethod: aSelector fromClass: aClass
]
