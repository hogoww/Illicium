Class {
	#name : #FATranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'replacementClasses'
	],
	#category : #'Angler-Core-translation'
}

{ #category : #configuration }
FATranslator class >> classTranslatorClass [
	^ IlliciumClassTranslator 
]

{ #category : #configuration }
FATranslator class >> prettyPrinterClass [

	^ FAPrettyPrint
]

{ #category : #'translation-api' }
FATranslator class >> translateClass: aClass [
	^ self new translateClass: aClass
]

{ #category : #'translation-api' }
FATranslator class >> translateExpression: anExpression [
	^ self new translateExpression: anExpression
]

{ #category : #'translation-api' }
FATranslator class >> translateMethod: aCompiledMethod [ 
	^ self new translateMethod: aCompiledMethod
]

{ #category : #'translation-api' }
FATranslator class >> translateMethod: aSelector fromClass: aClass [
	^ self new translateMethod: aSelector fromClass: aClass
]

{ #category : #'program-configuration' }
FATranslator >> addClass: aClass [
	classTranslator addClass: aClass
]

{ #category : #'program-configuration' }
FATranslator >> addMethod: aCollection [
	^ classTranslator addMethod: aCollection
]

{ #category : #accessors }
FATranslator >> beStrict [
 	classTranslator beStrict
]

{ #category : #accessors }
FATranslator >> classTranslator [
	^ classTranslator
]

{ #category : #accessors }
FATranslator >> classTranslator: aClassTranslator [
	aClassTranslator mainTranslator: self.
	classTranslator := aClassTranslator
]

{ #category : #initialization }
FATranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: #InterpreterProxy put: IlliciumVirtualMachineProxy.
	replacementClasses at: #IlliciumInterpreterProxy put: IlliciumVirtualMachineProxy.
]

{ #category : #initialization }
FATranslator >> getReplacementType: aPharoType [
	^ aPharoType performReplacementUsing: replacementClasses

]

{ #category : #initialization }
FATranslator >> initialize [
	classTranslator := self class classTranslatorClass new
		mainTranslator: self;
		yourself.
	"basic replacement classes"
	self flag: #careful. " float and string are used... Not well !"
	replacementClasses := Dictionary new
		at: #Object put: IlliciumObject ;
		at: #UndefinedObject put: IlliciumUndefinedObject ;
		at: #SmallInteger put: IlliciumSmallInteger ;
		at: #Boolean put: IlliciumBoolean ;
		at: #Character put: IlliciumCharacter ;
		at: #String put: IlliciumString ;
		at: #ByteString put: IlliciumString ;
		at: #ByteSymbol put: IlliciumString ;
		at: #Float put: IlliciumFloat ; 
		at: #SmallFloat64 put: IlliciumFloat ; 
		at: #BoxedFloat64 put: IlliciumFloat ; 
		at: #Array put: IlliciumArray ;
		yourself.
		
	self fillWithtranslatorSpecificTypes 
]

{ #category : #'translation-api' }
FATranslator >> prettyPrintCodeForMethod: aSelector fromClass: aClass [

	| compilationUnit |
	compilationUnit := self translateMethod: aSelector fromClass: aClass.
	^ compilationUnit definitions anyOne prettyPrintUsing: self class prettyPrinterClass new
]

{ #category : #'translation-api' }
FATranslator >> prettyPrinterClass [

	^ FAPrettyPrint
]

{ #category : #accessors }
FATranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
FATranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]

{ #category : #'translation-api' }
FATranslator >> translateClass: aClass [
	replacementClasses at: aClass name put: IlliciumUserClass.
	^ classTranslator translateClass: aClass
]

{ #category : #'translation-api' }
FATranslator >> translateExpression: anExpression [
	^ classTranslator translateExpression: anExpression
]

{ #category : #'translation-api' }
FATranslator >> translateMethod: aCompiledMethod [
	replacementClasses at: aCompiledMethod class name put: IlliciumUserClass.
	^ classTranslator translateMethod: aCompiledMethod 
]

{ #category : #'translation-api' }
FATranslator >> translateMethod: aSelector fromClass: aClass [
	replacementClasses at: aClass name put: IlliciumUserClass.
	^ classTranslator translateMethod: aSelector fromClass: aClass
]
