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
	currentIncludes := Set new
]

{ #category : #translating }
IlliciumClassTranslator >> translateClass: aClass withProgram: aProgram [ 
	| file cu |
	self resetIncludes.
	file := ASTCCFile new.
	cu := ASTCCompilationUnit new.
	aProgram methods do:[ :aMethod |
		(aClass includesBehavior: aMethod methodClass)
			ifTrue: [ cu add: (methodTranslator translateMethod: aMethod) ].
		].

	cu add: (stateTranslator translateStateOf: aClass).
	self addIncludesTo: cu.
	self flag: #hack."Needed to use the VM stuff, hardcoded for now."
	cu add: (ASTCPreprocessorInclude new cFile: (MASlangProgram asCFileForInclude); yourself).

	file implementation: cu.
	file generateHeaderFromImplementation.
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
	| type fakeNode |
	type := (mainTranslator inferer typeOfInstanceVariable: aSlot name ofClass: aSlot definingClass) asConstraint.
	"stub, shouldn't affect anything, awaiting IlliciumTypeChecker update.."
	fakeNode := (RBLiteralNode value: 1).

	type := IlliciumTypeChecker checkThatType: type for: fakeNode using: mainTranslator inferer.
	type isCollectionType ifTrue: [ IlliciumTypeChecker checkThatType: type elementType for: fakeNode using: mainTranslator inferer. ].
	^ type
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
