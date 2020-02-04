Class {
	#name : #ASTCClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'inferer',
		'stateTranslator',
		'program'
	],
	#category : #'Angler-Core-overviewers'
}

{ #category : #'translation-state' }
ASTCClassTranslator >> addState: stateStuffStruct to: aCompilationUnit [
	stateStuffStruct do:[:anElem| anElem addToCompilationUnit: aCompilationUnit ].
	^ aCompilationUnit
]

{ #category : #translation }
ASTCClassTranslator >> addTranslatedMethod: aFuncDef to: aCompilationUnit [
	aCompilationUnit addDefinition: aFuncDef.
	aCompilationUnit addDeclaration: aFuncDef declaration.
	^ aCompilationUnit
]

{ #category : #translation }
ASTCClassTranslator >> addTranslatedMethods: functionDefinitions to: aCompilationUnit [
	functionDefinitions
		do: [ :aFuncDef | 
			self addTranslatedMethod: aFuncDef to: aCompilationUnit
		].
	^ aCompilationUnit
]

{ #category : #typing }
ASTCClassTranslator >> annotateMethodsASTWithTypes: methodsASTs [
	| typeAnnotator |
	typeAnnotator := self typeAnnotatorClass new
		inferer: inferer;
		yourself.
	methodsASTs
		do: [ :aMethodAST | aMethodAST acceptVisitor: typeAnnotator ].
	^ methodsASTs
]

{ #category : #'program-configuration' }
ASTCClassTranslator >> annotateProgram [ 
	self program methodsDo: [ :each | inferer addMethod: (each asTranslationMethodOfClass: TMethod)].
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	
	self annotateMethodsASTWithTypes: program methods.
	
	
]

{ #category : #typing }
ASTCClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| inferer inferAST: aMethodAST ].
]

{ #category : #typing }
ASTCClassTranslator >> callgraphTypeStartingFromExpression: anExpression [
	inferer inferExpression: anExpression 
]

{ #category : #accessing }
ASTCClassTranslator >> doNotGeneratePragma [
	^ ASTCVirtualMachineAPI doNotGeneratePragma
]

{ #category : #accessing }
ASTCClassTranslator >> getReplacementType: aType [
	^ mainTranslator getReplacementType: aType 
]

{ #category : #accessing }
ASTCClassTranslator >> initialize [
	super initialize.
	methodTranslator := ASTCMethodTranslator new
		classTranslator: self;
		yourself.
	stateTranslator := Dictionary new
		at: #instanceVariable put: (ASTCInstanceVariablesTranslator new classTranslator: self; yourself);
		yourself
]

{ #category : #'translation-state' }
ASTCClassTranslator >> isStatefulCode [
	" will be used in the future to know if the translated plugin should have an instance, and stuff declared in an Struct"
	^ self subclassResponsibility 
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

{ #category : #visiting }
ASTCClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ self subclassResponsibility 
]

{ #category : #typing }
ASTCClassTranslator >> preTypeInference: aClass [
	"empty hook"
]

{ #category : #'translation-api' }
ASTCClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	
	self subclassResponsibility
]

{ #category : #typing }
ASTCClassTranslator >> program [
	^ program
]

{ #category : #typing }
ASTCClassTranslator >> program: aProgram [
	program := aProgram.
	self annotateProgram
]

{ #category : #'translation-state' }
ASTCClassTranslator >> stateId [
	^ ASTCIdentifier new id: self stateName ; yourself
]

{ #category : #'translation-api' }
ASTCClassTranslator >> stateName [
	^ #pluginState
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
	methodsASTs := self annotateMethodsASTWithTypes: methodsToTranslate.
	
	cu := ASTCCompilationUnit new.	
	stateStuff := self translateClassState: aClass.
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs fromClass: aClass.
	self addState: stateStuff to: cu.
	self addTranslatedMethods: functionDefinitionsASTs to: cu.
	cu debugASTCStructure.
	^ cu
]

{ #category : #'translation-state' }
ASTCClassTranslator >> translateClassState: aClass [
	| varDeclaration struct |
	varDeclaration := (stateTranslator at: #instanceVariable) translateInstanceVariablesOf: aClass.
	
	^ self isStatefulCode ifTrue:[ 
		| stateDeclaration |
		struct := ASTCStructureDefinition new.
		varDeclaration do: [ :aVarDecl | struct addMember: aVarDecl ].
		struct declaration: (ASTCStructureDeclaration new id: (ASTCIdentifier new id: aClass name)).
		
		stateDeclaration := ASTCVariableDeclaration new 
			type: (ASTCType new type: aClass; yourself) ; 
			id: self stateId;
			yourself.
			{ struct. stateDeclaration }
		]
	ifFalse:[ varDeclaration ].
	

]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateExpression: anExpression [
	| methodAST functionDefinitions |
	self callgraphTypeStartingFromExpression: anExpression.
	methodAST := self annotateMethodsASTWithTypes: (inferer typeProvider methodTypes at:1) node copy.
	
	functionDefinitions := self translateMethodsASTs: methodAST.
	^ functionDefinitions body
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aCompiledMethod [
	^self translateMethod: aCompiledMethod selector fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aSelector fromClass: aClass [
	| methodsASTs functionDefinitionsASTs  |
	methodsASTs := self
		prepareForTranslationFromSelector: aSelector
		fromClass: aClass.
	functionDefinitionsASTs := self
		translateMethodsASTs: methodsASTs
		fromClass: aClass.
		
	functionDefinitionsASTs size = 1 
		ifTrue: [
			aClass allInstVarNames 
				ifEmpty:[ ^ functionDefinitionsASTs anyOne ]
				ifNotEmpty:[ | cu stateStuff |
					cu := ASTCCompilationUnit new.
					stateStuff := self translateClassState: aClass.
					self addState: stateStuff to: cu.
					self addTranslatedMethods: functionDefinitionsASTs to: cu.
					cu debugASTCStructure.
					^ cu
					]
			].
	
	self error: 'Not planned currently, please report it.'
		 
	
	
]

{ #category : #translation }
ASTCClassTranslator >> translateMethodsASTs: methodsAST [
	^ methodsAST
		collect: [ :aMethodAST |
			self preTranslationVisitors do:[:aVisitor| aMethodAST acceptVisitor: aVisitor new ].
			methodTranslator translateMethodAST: aMethodAST ]
		
	
]

{ #category : #translation }
ASTCClassTranslator >> translateMethodsASTs: methodsAST fromClass: aClass [
	| res |
	res := methodsAST
		collect: [ :aMethodAST |
			self preTranslationVisitors do:[:aVisitor| aMethodAST acceptVisitor: aVisitor new ].
			methodTranslator translateMethodAST: aMethodAST
		].
	^ res
]

{ #category : #typing }
ASTCClassTranslator >> typeAnnotatorClass [
	" This should return the class used to annotate types on RB ASTs"
	^ self subclassResponsibility 
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
