Class {
	#name : #MAIlliciumTranslator,
	#superclass : #FATranslator,
	#instVars : [
		'replacementClasses'
	],
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> classTranslatorClass [
	^ IlliciumClassTranslator 
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> prettyPrinterClass [

	^ FAPrettyPrint
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> programClass [
	^ FAProgram
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
	inferer := PhineasInferer new explicitTypeHeuristic: PISlangTypesHeuristic; yourself. 
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

{ #category : #visiting }
MAIlliciumTranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { 
		IlliciumDeclarationAnnotator new. 
		IlliciumPhineasTypeAnnotator new inferer: self inferer ; yourself"always take the latest inferer"
		}
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]
