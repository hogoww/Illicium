Class {
	#name : #ASTCTranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'Angler-Core-overviewers'
}

{ #category : #configuration }
ASTCTranslator class >> classTranslatorClass [
	^ ASTCIlliciumClassTranslator 
]

{ #category : #configuration }
ASTCTranslator class >> prettyPrinterClass [

	^ ASTCPrettyPrint
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

{ #category : #'program-configuration' }
ASTCTranslator >> addClass: aClass [
	classTranslator addClass: aClass
]

{ #category : #'program-configuration' }
ASTCTranslator >> addMethod: aCollection [
	^ classTranslator addMethod: aCollection
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
	replacementClasses at: #InterpreterProxy put: ASTCVirtualMachineProxy.
	replacementClasses at: #ASTCInterpreterProxy put: ASTCVirtualMachineProxy.
]

{ #category : #initialization }
ASTCTranslator >> getReplacementType: aPharoType [
	^ aPharoType performReplacementUsing: replacementClasses

]

{ #category : #initialization }
ASTCTranslator >> initialize [
	classTranslator := self class classTranslatorClass new
		mainTranslator: self;
		yourself.
	"basic replacement classes"
	self flag: #careful. " float and string are used... Not well !"
	replacementClasses := Dictionary new
		at: #Object put: ASTCObject ;
		at: #UndefinedObject put: ASTCUndefinedObject ;
		at: #SmallInteger put: ASTCSmallInteger ;
		at: #Boolean put: ASTCBoolean ;
		at: #Character put: ASTCCharacter ;
		at: #String put: ASTCString ;
		at: #ByteString put: ASTCString ;
		at: #ByteSymbol put: ASTCString ;
		at: #Float put: ASTCFloat ; 
		at: #SmallFloat64 put: ASTCFloat ; 
		at: #BoxedFloat64 put: ASTCFloat ; 
		at: #Array put: ASTCArray ;
		yourself.
		
	self fillWithtranslatorSpecificTypes 
]

{ #category : #'translation-api' }
ASTCTranslator >> prettyPrintCodeForMethod: aSelector fromClass: aClass [

	| compilationUnit |
	compilationUnit := self translateMethod: aSelector fromClass: aClass.
	^ compilationUnit definitions anyOne prettyPrintUsing: self class prettyPrinterClass new
]

{ #category : #'translation-api' }
ASTCTranslator >> prettyPrinterClass [

	^ ASTCPrettyPrint
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
	replacementClasses at: aClass name put: ASTCUserClass.
	^ classTranslator translateClass: aClass
]

{ #category : #'translation-api' }
ASTCTranslator >> translateExpression: anExpression [
	^ classTranslator translateExpression: anExpression
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aCompiledMethod [
	replacementClasses at: aCompiledMethod class name put: ASTCUserClass.
	^ classTranslator translateMethod: aCompiledMethod 
]

{ #category : #'translation-api' }
ASTCTranslator >> translateMethod: aSelector fromClass: aClass [
	replacementClasses at: aClass name put: ASTCUserClass.
	^ classTranslator translateMethod: aSelector fromClass: aClass
]
