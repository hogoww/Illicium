Class {
	#name : #MAIlliciumTranslator,
	#superclass : #FATranslator,
	#instVars : [
		'replacementClasses'
	],
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #configuration }
MAIlliciumTranslator class >> classTranslatorClass [
	^ IlliciumClassTranslator 
]

{ #category : #configuration }
MAIlliciumTranslator class >> prettyPrinterClass [

	^ FAPrettyPrint
]

{ #category : #initialization }
MAIlliciumTranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: #InterpreterProxy put: IlliciumVirtualMachineProxy.
	replacementClasses at: #IlliciumInterpreterProxy put: IlliciumVirtualMachineProxy.
]

{ #category : #initialization }
MAIlliciumTranslator >> getReplacementType: aPharoType [
	^ aPharoType performReplacementUsing: replacementClasses
]

{ #category : #initialization }
MAIlliciumTranslator >> initialize [
	super initialize.
	"basic replacement classes"
	 " float and string are used... Not well !"
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

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]
