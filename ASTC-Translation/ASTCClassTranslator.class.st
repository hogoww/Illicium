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

{ #category : #translation }
ASTCClassTranslator >> addState: stateStuff to: aCompilationUnit [
	stateStuff
		do: [ :aVarDecl |
			aCompilationUnit declarations add: aVarDecl.].
	^ aCompilationUnit
]

{ #category : #translation }
ASTCClassTranslator >> addTranslatedMethods: functionDefinitions to: aCompilationUnit [
	functionDefinitions
		do: [ :aFuncDef | 
			aCompilationUnit definitions add: aFuncDef.
			aCompilationUnit declarations add: aFuncDef declaration ].
	^ aCompilationUnit
]

{ #category : #typing }
ASTCClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| inferer inferAST: aMethodAST ].
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
	 ^ inferer typeProvider methodTypes
		select: [ :aMethod | 
			(aClass methodDict keys includes: aMethod node selector)
			and: [ aMethod receiver concreteClass= aClass  
				and: [ (aMethod node hasPragmaNamed: #doNotGenerate) not 
				and: [ aMethod node compiledMethod isFromTrait not ] ] ] ]
		thenCollect: [:aMethod| aMethod node copy ].
]

{ #category : #'translation-api' }
ASTCClassTranslator >> preTranslationConstraintCheck: aClass [
	"empty hook"
]

{ #category : #typing }
ASTCClassTranslator >> preTypeInference: aClass [
	"empty hook"
]

{ #category : #accessing }
ASTCClassTranslator >> stateTranslator [
	^ stateTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> stateTranslator: aDictionary [
	stateTranslator := aDictionary
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateClass: aClass [ 
	| methodsASTs functionDefinitionsASTs methodsToTranslate entryPoints cu stateStuff |
	self preTypeInference: aClass.
	entryPoints := self typeInferenceEntryPoints: aClass.
	self callgraphTypeStartingFrom: entryPoints.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	cu := ASTCCompilationUnit new.	
	stateStuff := self translateClassState: aClass.
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	self addState: stateStuff to: cu.
	self addTranslatedMethods: functionDefinitionsASTs to: cu.
	cu debugASTCStructure.
	^ cu
]

{ #category : #translation }
ASTCClassTranslator >> translateClassState: aClass [
	^ (stateTranslator at: #instanceVariable) translateInstanceVariablesOf: aClass. 
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aCompiledMethod [
	^self translateMethod: aCompiledMethod selector fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aSelector fromClass: aClass [
	| methodsASTs functionDefinitionsASTs methodsToTranslate cu stateStuff |
	self preTranslationConstraintCheck: aClass.
	self preTypeInference: aClass.
	self callgraphTypeStartingFrom: { (aClass >> aSelector) ast  }.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	cu := ASTCCompilationUnit new.
	stateStuff := self translateClassState: aClass.
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	self addState: stateStuff to: cu.
	self addTranslatedMethods: functionDefinitionsASTs to: cu.
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
	^ self getReplacementType: (inferer typeOfInstanceVariable: anIVName ofClass: aClass) anyOne
]
