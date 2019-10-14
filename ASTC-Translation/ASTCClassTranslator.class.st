Class {
	#name : #ASTCClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'inferer',
		'stateTranslator'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #typing }
ASTCClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| inferer inferAST: aMethodAST ].
]

{ #category : #translation }
ASTCClassTranslator >> compilationUnitFromTranslatedMethod: functionDefinitions [
	| cu |
	cu := ASTCCompilationUnit new.
	functionDefinitions
		do: [ :aFuncDef | 
			cu definitions add: aFuncDef.
			cu declarations add: aFuncDef declaration ].
	^ cu
]

{ #category : #accessing }
ASTCClassTranslator >> doNotGeneratePragma [
	^ ASTCVirtualMachineAPI doNotGeneratePragma
]

{ #category : #accessing }
ASTCClassTranslator >> getReplacementType: aClass [
	^ mainTranslator getReplacementType: aClass
]

{ #category : #initialization }
ASTCClassTranslator >> initialize [
	methodTranslator := ASTCMethodTranslator new
		classTranslator: self;
		yourself.
	inferer := PhineasInferer new.
	
	stateTranslator := Dictionary new
		at: #instanceVariable put: (ASTCInstanceVariablesTranslator new classTranslator: self; yourself);
		yourself
	
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator [
	^ mainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator: aMainTranslator [
	mainTranslator := aMainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #translation }
ASTCClassTranslator >> methodsToTranslateASTs: aClass [
	^ inferer types methodTypes
		select: [ :aMethod | 
			(aClass methodDict keys includes: aMethod node selector)
				and: [ (aMethod node hasPragmaNamed: #doNotGenerate) not ] ]
		thenCollect: [:aMethod| aMethod node copy ]
]

{ #category : #'translation-api' }
ASTCClassTranslator >> preTranslationConstraintCheck: aClass [
	"empty hook"
]

{ #category : #typing }
ASTCClassTranslator >> preTypeInference: aClass [
	"empty hook"
]

{ #category : #translation }
ASTCClassTranslator >> stateTranslator [
	^ stateTranslator
]

{ #category : #translation }
ASTCClassTranslator >> stateTranslator: aDictionary [
	stateTranslator := aDictionary
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateClass: aClass [ 
	| methodsASTs functionDefinitionsASTs methodsToTranslate entryPoints cu |
	self preTypeInference: aClass.
	entryPoints := self typeInferenceEntryPoints: aClass.
	self callgraphTypeStartingFrom: entryPoints.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	cu := self compilationUnitFromTranslatedMethod: functionDefinitionsASTs.
	cu debugASTCStructure.
	^ cu
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aCompiledMethod [
	^self translateMethod: aCompiledMethod selector fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aSelector fromClass: aClass [
	| methodsASTs functionDefinitionsASTs methodsToTranslate cu |
	self preTranslationConstraintCheck: aClass.
	self preTypeInference: aClass.
	self callgraphTypeStartingFrom: { (aClass >> aSelector) ast  }.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	cu := self compilationUnitFromTranslatedMethod: functionDefinitionsASTs.
	cu debugASTCStructure.
	^ cu
]

{ #category : #translation }
ASTCClassTranslator >> translateMethodsASTs: methodsAST [
	^ methodsAST
		collect: [ :aMethodAST | methodTranslator translateMethodAST: aMethodAST ]
]

{ #category : #typing }
ASTCClassTranslator >> typeASTsOfMethods: methodsASTs [
	| typeAnnotator |
	typeAnnotator := ASTCTypeAnnotationAST new
		inferer: inferer;
		yourself.
	methodsASTs
		do: [ :aMethodAST | aMethodAST acceptVisitor: typeAnnotator ].
	^ methodsASTs
]

{ #category : #typing }
ASTCClassTranslator >> typeInferenceEntryPoints: aClass [
	| methods |
	methods := OrderedCollection new.
	aClass methodDict
		do: [ :aMethod | 
			(aMethod ast arguments isEmpty and: [(aMethod hasPragmaNamed: #doNotGenerate) not])
				ifTrue: [ methods add: aMethod ast copy ] ].
	^ methods
]

{ #category : #typing }
ASTCClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	"should be pushed into phineas"
	^ ((inferer types classAt: aClass name) variableAt: anIVName ifAbsent:[:types| NotFound signal]) concreteClasses.

]
