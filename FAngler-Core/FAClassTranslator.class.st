Class {
	#name : #FAClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'inferer',
		'stateTranslator',
		'program',
		'isStrict'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #asserting }
FAClassTranslator class >> shouldITranslate: aMethod [
	"should return true if aMethod should be translated and false overwise."
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FAClassTranslator >> addClass: aClass [ 

	program addClass: aClass
]

{ #category : #'translation-state' }
FAClassTranslator >> addState: stateStuffStruct to: aCompilationUnit [
	stateStuffStruct do:[:anElem| anElem addToCompilationUnit: aCompilationUnit ].
	^ aCompilationUnit
]

{ #category : #translation }
FAClassTranslator >> addTranslatedMethod: aFuncDef to: aCompilationUnit [
	aCompilationUnit addDefinition: aFuncDef.
	aCompilationUnit addDeclaration: aFuncDef declaration.
	^ aCompilationUnit
]

{ #category : #translation }
FAClassTranslator >> addTranslatedMethods: functionDefinitions to: aCompilationUnit [
	functionDefinitions
		do: [ :aFuncDef | 
			self addTranslatedMethod: aFuncDef to: aCompilationUnit
		].
	^ aCompilationUnit
]

{ #category : #annotation }
FAClassTranslator >> annotateMethodAST: aMethodNode [ 
	| visitors |
	visitors := self preTranslationVisitors.
	aMethodNode acceptMultipleVisitors: visitors.
]

{ #category : #configuration }
FAClassTranslator >> beStrict [
	isStrict := true
]

{ #category : #typing }
FAClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| inferer inferAST: aMethodAST ].
]

{ #category : #typing }
FAClassTranslator >> callgraphTypeStartingFromExpression: anExpression [
	inferer inferExpression: anExpression 
]

{ #category : #accessing }
FAClassTranslator >> doNotGeneratePragma [
	^ IlliciumVirtualMachineAPI doNotGeneratePragma
]

{ #category : #accessing }
FAClassTranslator >> getReplacementType: aType [
	^ mainTranslator getReplacementType: aType 
]

{ #category : #initialization }
FAClassTranslator >> initialize [
	super initialize.
	isStrict := false.
	methodTranslator := FAMethodTranslator new
		classTranslator: self;
		yourself.
	stateTranslator := Dictionary new
		at: #instanceVariable put: (IlliciumInstanceVariablesTranslator new classTranslator: self; yourself);
		yourself
]

{ #category : #'translation-state' }
FAClassTranslator >> isStatefulCode [
	" will be used in the future to know if the translated plugin should have an instance, and stuff declared in an Struct"
	^ self subclassResponsibility 
]

{ #category : #configuration }
FAClassTranslator >> isStrict [
	^ isStrict
]

{ #category : #accessing }
FAClassTranslator >> mainTranslator [
	^ mainTranslator
]

{ #category : #accessing }
FAClassTranslator >> mainTranslator: aMainTranslator [
	mainTranslator := aMainTranslator
]

{ #category : #accessing }
FAClassTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #accessing }
FAClassTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #translation }
FAClassTranslator >> methodsToTranslateASTs: aClass [
	 ^ inferer typeProvider methodTypes
		select: [ :aMethod | 
			(aClass methodDict keys includes: aMethod node selector)
			and: [ aMethod receiver concreteClass= aClass  
				and: [ (aMethod node hasPragmaNamed: #doNotGenerate) not 
				and: [ aMethod node compiledMethod isFromTrait not ] ] ] ]
		thenCollect: [:aMethod| aMethod node copy ].
]

{ #category : #finishing }
FAClassTranslator >> postTranslationVisitsFor: anASTCNode [ 
	self postTranslationVisitors do: [ :aVisitor | anASTCNode acceptVisitor: aVisitor ].
	^ anASTCNode
]

{ #category : #'translation-api' }
FAClassTranslator >> preTranslationConstraintCheck: aClass [
	"empty hook"
]

{ #category : #visiting }
FAClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ self subclassResponsibility 
]

{ #category : #typing }
FAClassTranslator >> preTypeInference: aClass [
	"empty hook"
]

{ #category : #'translation-api' }
FAClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	
	self subclassResponsibility
]

{ #category : #annotation }
FAClassTranslator >> prepareMethodsASTs: methodsASTs [
	methodsASTs
		do: [ :aMethodAST | self annotateMethodAST: aMethodAST ].
	^ methodsASTs
]

{ #category : #typing }
FAClassTranslator >> program [
	^ program
]

{ #category : #typing }
FAClassTranslator >> program: aProgram [

	program := aProgram
]

{ #category : #testing }
FAClassTranslator >> shouldITranslate: aMethod [
	^ self class shouldITranslate: aMethod
]

{ #category : #'translation-state' }
FAClassTranslator >> stateId [
	^ ASTCIdentifier new id: self stateName ; yourself
]

{ #category : #'translation-api' }
FAClassTranslator >> stateName [
	^ #pluginState
]

{ #category : #accessing }
FAClassTranslator >> stateTranslator [
	^ stateTranslator
]

{ #category : #accessing }
FAClassTranslator >> stateTranslator: aDictionary [
	stateTranslator := aDictionary
]

{ #category : #'translation-api' }
FAClassTranslator >> translateClass: aClass [ 
	| methodsASTs functionDefinitionsASTs methodsToTranslate entryPoints cu stateStuff |
	self preTypeInference: aClass.
	entryPoints := self typeInferenceEntryPoints: aClass.
	self callgraphTypeStartingFrom: entryPoints.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self prepareMethodsASTs: methodsToTranslate.
	
	cu := ASTCCompilationUnit new.	
	stateStuff := self translateClassState: aClass.
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs fromClass: aClass.
	self addState: stateStuff to: cu.
	self addTranslatedMethods: functionDefinitionsASTs to: cu.
	cu debugASTCStructure.
	^ cu
]

{ #category : #'translation-state' }
FAClassTranslator >> translateClassState: aClass [
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
FAClassTranslator >> translateExpression: anExpression [
	| methodAST functionDefinitions |
	self callgraphTypeStartingFromExpression: anExpression.
	methodAST := self prepareMethodsASTs: (inferer typeProvider methodTypes at: 1) node copy.
	
	functionDefinitions := self translateMethodsASTs: methodAST.
	^ functionDefinitions body
]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethod: aCompiledMethod [
	^self translateMethod: aCompiledMethod selector fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethod: aSelector fromClass: aClass [
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
					self postTranslationVisitsFor: cu.
					cu debugASTCStructure.
					^ cu
					]
			].
	
	self error: 'Not planned currently, please report it.'
		 
	
	
]

{ #category : #translation }
FAClassTranslator >> translateMethodsASTs: methodsAST [
	^ methodsAST
		collect: [ :aMethodAST |
			self preTranslationVisitors do:[:aVisitor| aMethodAST acceptVisitor: aVisitor ].
			methodTranslator translateMethodAST: aMethodAST ]
		
	
]

{ #category : #translation }
FAClassTranslator >> translateMethodsASTs: methodsAST fromClass: aClass [
	"overrides the previous one to remove the hook for pre translation. 
	Should probably disapear, but that's work for another day"
	| res |
	res := methodsAST
		collect: [ :aMethodAST |
			
			methodTranslator translateMethodAST: aMethodAST
		].
	^ res
]

{ #category : #typing }
FAClassTranslator >> typeAnnotatorClass [
	" This should return the class used to annotate types on RB ASTs"
	^ self subclassResponsibility 
]

{ #category : #typing }
FAClassTranslator >> typeInferenceEntryPoints: aClass [
	| methods |
	methods := OrderedCollection new.
	aClass methodDict
		do: [ :aMethod | 
			(aMethod ast arguments isEmpty and: [(aMethod hasPragmaNamed: #doNotGenerate) not])
				ifTrue: [ methods add: aMethod ast copy ] ].
	^ methods
]
