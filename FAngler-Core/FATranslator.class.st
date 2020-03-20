Class {
	#name : #FATranslator,
	#superclass : #Object,
	#instVars : [
		'classTranslator',
		'program',
		'inferer'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #'default-configuration' }
FATranslator class >> classTranslatorClass [
	^ self subclassResponsibility
]

{ #category : #'default-configuration' }
FATranslator class >> prettyPrinterClass [
	^ self subclassResponsibility
]

{ #category : #'default-configuration' }
FATranslator class >> programClass [
	^ self subclassResponsibility 
]

{ #category : #'default-configuration' }
FATranslator class >> shouldITranslate: aMethod [
	"should return true if aMethod should be translated and false overwise."
	^ self subclassResponsibility
]

{ #category : #'translation-api' }
FATranslator class >> translateClass: aClass [
	^ self new
		addClass: aClass ; 
		translateProgram
]

{ #category : #'translation-api' }
FATranslator class >> translateExpression: anExpression [
	^ self new translateExpression: anExpression
]

{ #category : #'translation-api' }
FATranslator class >> translateMethod: aCompiledMethod [
	^ self translateMethod: aCompiledMethod ast fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
FATranslator class >> translateMethod: anAST fromClass: aClass [
	^ self new 
		addMethod: anAST fromClass: aClass;
		translateProgram.
]

{ #category : #'translation-api' }
FATranslator class >> translateProgram: aProgram [
	^ self new
		program: aProgram ; 
		translateProgram
]

{ #category : #'program-configuration' }
FATranslator >> addClass: aClass [
	program addClass: aClass
]

{ #category : #'program-configuration' }
FATranslator >> addMethod: aCollection [
	program addMethod: aCollection
]

{ #category : #accessors }
FATranslator >> addMethod: anAST fromClass: aClass [
	self program addClass: aClass.
	self program addMethod: anAST
]

{ #category : #annotation }
FATranslator >> annotateMethodAST: aMethodNode [ 
	| visitors |
	visitors := self preTranslationVisitors.
	aMethodNode acceptMultipleVisitors: visitors.
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

{ #category : #accessors }
FATranslator >> getReplacementType: aPharoType [
	"should return a class understanding new"
	^ self subclassResponsibility

]

{ #category : #initialization }
FATranslator >> initialize [
	super initialize.
	program := self class programClass new.
	classTranslator := self class classTranslatorClass new
		mainTranslator: self;
		program: program;
		yourself.

]

{ #category : #visiting }
FATranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ self subclassResponsibility 
]

{ #category : #'translation-api' }
FATranslator >> prepareMethodsASTs: methodsASTs [
	methodsASTs
		do: [ :aMethodAST | self annotateMethodAST: aMethodAST ].
	^ methodsASTs
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
FATranslator >> program [
	^ program
]

{ #category : #accessors }
FATranslator >> program: aProgram [
	program := aProgram
]

{ #category : #testing }
FATranslator >> shouldITranslate: aMethod [
	^ self class shouldITranslate: aMethod
]

{ #category : #'translation-api' }
FATranslator >> translateClass: aClass [
	^ classTranslator translateClass: aClass
]

{ #category : #'translation-api' }
FATranslator >> translateExpression: anExpression [
	^ classTranslator translateExpression: anExpression
]

{ #category : #accessors }
FATranslator >> translateMethod: aSelector fromClass: aClass [
	| method |
	self prepareProgram.
	method := program methodNamed: aSelector.

	method 
		ifNotNil: [ ^ classTranslator translateMethod: method ]
		ifNil: [ self halt. ].
]

{ #category : #'translation-api' }
FATranslator >> translateProgram [
	| cu |
	self prepareProgram.
	
	cu := ASTCCompilationUnit new.
	program classes collect: [ :aClass | cu add: (self translateClass: aClass) ].
	^ cu
]
