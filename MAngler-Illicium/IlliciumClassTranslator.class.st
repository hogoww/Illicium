Class {
	#name : #IlliciumClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #translation }
IlliciumClassTranslator >> addIncludesTo: aCompilationUnit [ 
	currentIncludes 
		collect: [ :cFile | ASTCPreprocessorInclude new cFile: cFile ; yourself ]
		into: aCompilationUnit
]

{ #category : #typing }
IlliciumClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| self inferer inferAST: aMethodAST ].
]

{ #category : #typing }
IlliciumClassTranslator >> callgraphTypeStartingFromExpression: anExpression [
	mainTranslator inferer inferExpression: anExpression 
]

{ #category : #Initialization }
IlliciumClassTranslator >> initialize [
	super initialize.
	methodTranslator methodNodeTranslator: ILMethodNodeTestTranslator new.
	
	methodTranslator assignmentNodeTranslator: MAIlliciumAssignementTranslator new.
	stateTranslator := FAClassStateAsStructTranslator new classTranslator: self; yourself
]

{ #category : #'translation-state' }
IlliciumClassTranslator >> isStatefulCode [
	^ true
]

{ #category : #translation }
IlliciumClassTranslator >> methodsToTranslateASTs: aClass [
	self halt. "unused"
	 ^ self inferer typeProvider methodTypes
		select: [ :aMethod | 
			(aClass methodDict keys includes: aMethod node selector)
			and: [ aMethod receiver concreteClass= aClass  
				and: [ (aMethod node hasPragmaNamed: #doNotGenerate) not 
				and: [ aMethod node compiledMethod isFromTrait not ] ] ] ]
		thenCollect: [:aMethod| aMethod node copy ].
]

{ #category : #translation }
IlliciumClassTranslator >> postTranslationVisitors [
	"Duplicate of slang's version for now"
	^ {
		FAStatementsBecomeExpressions new.
		ASTCDebugStructureVisitor new
		 " debugStructure should be last, to check that everything's working :)"
	}
]

{ #category : #translation }
IlliciumClassTranslator >> preTranslationConstraintCheck: aClass [
	(aClass traitComposition
		includesTrait: IlliciumVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now. They need to use the ASTCVirtualMachineAPI trait.' ].
]

{ #category : #'translation-api' }
IlliciumClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	| methodsASTs methodsToTranslate |
	self preTranslationConstraintCheck: aClass.
	self callgraphTypeStartingFrom: {(aClass >> aSelector) ast}.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self prepareMethodsASTs: methodsToTranslate.
	^ methodsASTs
]

{ #category : #translating }
IlliciumClassTranslator >> resetIncludes [
	currentIncludes := OrderedCollection new
]

{ #category : #'translation-api' }
IlliciumClassTranslator >> translateClass: aClass [
	| cu |
	self halt.
	cu := ASTCCompilationUnit new.
	cu add: (self translateClassFunctionsOf: aClass).
	cu add: (self translateStateOf: aClass).
	self halt.
	^ ASTCCFile new
		header: cu removeHeaderAndPutItInNewCompilationUnit;  
		implementation: cu;
		yourself
]

{ #category : #translating }
IlliciumClassTranslator >> translateClass: aClass withProgram: aProgram [ 
	| file cu |
	self resetIncludes.
	file := ASTCCFile new.
	cu := ASTCCompilationUnit new.
	aProgram methods do:[ :aMethod |
		(aMethod methodClass includesBehavior: aClass)
			ifTrue: [ cu add: (self translateMethod: aMethod) ].
		].
	cu add: (self translateStateOf: aClass).
	self addIncludesTo: cu.
	
	
	file header: cu removeHeaderAndPutItInNewCompilationUnit.
	file implementation: cu.
	file fileName: aClass name.
	
	^ file
]

{ #category : #'translation-api' }
IlliciumClassTranslator >> translateExpression: anExpression [
	| methodAST functionDefinitions |
	self callgraphTypeStartingFromExpression: anExpression.
	methodAST := self prepareMethodsASTs: (self inferer typeProvider methodTypes at: 1) node copy.
	
	functionDefinitions := self translateMethodsASTs: methodAST.
	^ functionDefinitions body
]

{ #category : #'translating-state' }
IlliciumClassTranslator >> translateStateOf: aClass [ 
	^ stateTranslator translateStateOf: aClass
]

{ #category : #typing }
IlliciumClassTranslator >> typeInferenceEntryPoints: aClass [
	| methods |
	methods := OrderedCollection new.
	aClass methodDict
		do: [ :aMethod | 
			(aMethod ast arguments isEmpty and: [(aMethod hasPragmaNamed: #doNotGenerate) not])
				ifTrue: [ methods add: aMethod ast copy ] ].
	^ methods
]

{ #category : #typing }
IlliciumClassTranslator >> typeOfSlot: aSlot [
	^ (mainTranslator inferer typeOfInstanceVariable: aSlot name ofClass: aSlot definingClass) asConstraint 
]

{ #category : #typing }
IlliciumClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	"should be pushed into phineas"
	| phineasType type |
	self deprecated: #shouldBeImplementedAsTypeofSlot.
	phineasType := 	phineasType := (self inferer concreteTypesOfInstanceVariable: anIVName ofClass:aClass).
	type := (IlliciumTypeChecker type: phineasType asPharoType using: self inferer forVar: anIVName).
	^ self getReplacementType: type
]
