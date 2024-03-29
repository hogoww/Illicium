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
		addMethod: anAST;
		translateMethod: anAST selector fromClass: aClass
]

{ #category : #'translation-api' }
FATranslator class >> translateProgram: aProgram [
	^ self new
		program: aProgram ; 
		translateProgram
]

{ #category : #configuring }
FATranslator class >> typeAnnotatorClass [
	^ self subclassResponsibility
]

{ #category : #'program-configuration' }
FATranslator >> addClass: aClass [
	program addClass: aClass
]

{ #category : #'program-configuration' }
FATranslator >> addInclude: aString [
	program addInclude: aString
]

{ #category : #'program-configuration' }
FATranslator >> addMethod: aCollection [
	program addMethod: aCollection
]

{ #category : #accessors }
FATranslator >> addMethod: anAST fromClass: aClass [
	program addMethod: anAST copy
]

{ #category : #'translation-api' }
FATranslator >> annotateMethodAST: aMethodAST [
	aMethodAST acceptMultipleVisitors: self preTranslationAnnotators 
]

{ #category : #transformations }
FATranslator >> applyTransformationsOn: aMethodNode [ 
	self preTranslationTransformations do: [:aTransformation|
		aTransformation applyOnMethod: aMethodNode ofProgram: program.
		].
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
		yourself.

]

{ #category : #accessing }
FATranslator >> methodFor: aSelector [
	^ program methodFor: aSelector
]

{ #category : #visiting }
FATranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { self class typeAnnotatorClass new inferer: inferer ; yourself }
]

{ #category : #visiting }
FATranslator >> preTranslationTransformations [
	"should return a collection of transformations to be applied on the methods of the program"
	^ self subclassResponsibility
]

{ #category : #'translation-api' }
FATranslator >> prepareMethodsASTs: methodsASTs [
	"we don't treat macros."
	methodsASTs do: [ :aMethodAST | 
		aMethodAST isCMacro 
			ifFalse:[ self annotateMethodAST: aMethodAST ]
			ifTrue:[ self typeMacroMethod: aMethodAST ] ].
		methodsASTs do: [ :aMethodAST | 
		aMethodAST isCMacro ifFalse:[
			self applyTransformationsOn: aMethodAST ]].
	^ methodsASTs
]

{ #category : #preparing }
FATranslator >> prepareProgram [
	"default implementation"
	program prepareWithInferer: inferer inTranslator: self.
]

{ #category : #'translation-api' }
FATranslator >> prettyPrintCodeForMethod: aSelector fromClass: aClass [

	| compilationUnit |
	compilationUnit := self translateMethod: aSelector fromClass: aClass.
	^ compilationUnit definitions anyOne prettyPrintUsing: self class prettyPrinterClass new
]

{ #category : #default }
FATranslator >> prettyPrinterClass [
	"should return the *class* used to pretty print by default"
	^ self subclassResponsibility 
]

{ #category : #printing }
FATranslator >> printCompilationUnit: aCompilationUnit in: aDirectory withName: aFileName [
	FAFilePrinter new
		directory: aDirectory;
		fileName: aFileName;
		compilationUnit: aCompilationUnit;
		prettyPrinter: self class prettyPrinterClass new;
		generateFiles
]

{ #category : #printing }
FATranslator >> printCompilationUnitInSeparateFiles: aCompilationUnit in: aDirectory withFileName: aClassName [
	| headerCompilationUnit |
	headerCompilationUnit := aCompilationUnit removeHeaderAndPutItInNewCompilationUnit.
	aCompilationUnit add: (ASTCPreprocessorInclude new name:  '"',aClassName , '.h"').
	
	self printCompilationUnit: headerCompilationUnit in: aDirectory withName: aClassName , '.h'.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: aClassName , '.c'
]

{ #category : #printing }
FATranslator >> printCompilationUnitInSingleFile: aCompilationUnit in: aDirectory withFileName: fileName [
	aCompilationUnit addDeclarationsOfDefinitions.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: fileName , '.c'
]

{ #category : #accessors }
FATranslator >> program [
	^ program
]

{ #category : #accessors }
FATranslator >> program: aProgram [
	program := aProgram
]

{ #category : #'translation-api' }
FATranslator >> translateExpression: anExpression [
	| doIt |
	doIt := OpalCompiler new noPattern: true ; compile: anExpression.
	program addMethod: doIt ast."no need to send a copy, as it's not installed in the system"
	self prepareProgram.
	^ classTranslator methodTranslator translateMethod: doIt ast.
]

{ #category : #accessors }
FATranslator >> translateMethod: aSelector fromClass: aClass [
	| method |
	self prepareProgram.
	method := program methodNamed: aSelector.

	method 
		ifNotNil: [ ^ (classTranslator translateMethod: method) definitions anyOne ]
		ifNil: [ self error ].
]

{ #category : #'translation-api' }
FATranslator >> translateProgram [
	| cu |
	self prepareProgram.
	
	cu := ASTCCompilationUnit new.
	program classes collect: [ :aClass | self translateClass: aClass ] into: cu.
	^ cu
]

{ #category : #'translation-api' }
FATranslator >> typeMacroMethod: aMethodAST [
	aMethodAST acceptVisitor: (self class typeAnnotatorClass new inferer: inferer; yourself)
]
