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
		yourself
]

{ #category : #visiting }
MAIlliciumTranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { 
		IlliciumDeclarationAnnotator new. 
		IlliciumPhineasTypeAnnotator new inferer: inferer ; yourself "always take the latest inferer"
		}
]

{ #category : #visiting }
MAIlliciumTranslator >> prepareProgram [
	program methods do: [ :aMethod | inferer infer: aMethod ].
	program methods do:[ :aMethod | self annotateMethodAST: aMethod ].

]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]

{ #category : #visiting }
MAIlliciumTranslator >> translateProgram [
	| cu |
	cu := ASTCCompilationUnit new.
	program methods value
		collect: [ :aMethod | classTranslator methodTranslator translateMethod: aMethod ] into: cu.
	^ cu
]
