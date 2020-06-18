Class {
	#name : #IlliciumClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #typing }
IlliciumClassTranslator >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| self inferer inferAST: aMethodAST ].
]

{ #category : #typing }
IlliciumClassTranslator >> callgraphTypeStartingFromExpression: anExpression [
	mainTranslator inferer inferExpression: anExpression 
]

{ #category : #translation }
IlliciumClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #translation }
IlliciumClassTranslator >> methodsToTranslateASTs: aClass [
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
		"ASTCDebugStructureVisitor new" "currently disabled" 
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

{ #category : #'translation-api' }
IlliciumClassTranslator >> translateClass: aClass [ 
	| methodsASTs functionDefinitionsASTs methodsToTranslate entryPoints cu stateStuff |
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

{ #category : #'translation-api' }
IlliciumClassTranslator >> translateExpression: anExpression [
	| methodAST functionDefinitions |
	self callgraphTypeStartingFromExpression: anExpression.
	methodAST := self prepareMethodsASTs: (self inferer typeProvider methodTypes at: 1) node copy.
	
	functionDefinitions := self translateMethodsASTs: methodAST.
	^ functionDefinitions body
]

{ #category : #typing }
IlliciumClassTranslator >> typeAnnotatorClass [
	^ IlliciumPhineasTypeAnnotator
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
IlliciumClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	"should be pushed into phineas"
	| phineasType type |
	self deprecated: #shouldBeImplementedAsTypeofSlot.
	phineasType := 	phineasType := (self inferer concreteTypesOfInstanceVariable: anIVName ofClass:aClass).
	type := (IlliciumTypeChecker type: phineasType asPharoType using: self inferer forVar: anIVName).
	^ self getReplacementType: type
]
