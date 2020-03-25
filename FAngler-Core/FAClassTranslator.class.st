Class {
	#name : #FAClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'stateTranslator',
		'program',
		'isStrict'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #'translation-state' }
FAClassTranslator >> addState: stateStuffStruct to: aCompilationUnit [
	stateStuffStruct do:[:anElem| anElem addToCompilationUnit: aCompilationUnit ].
	^ aCompilationUnit
]

{ #category : #configuration }
FAClassTranslator >> beStrict [
	isStrict := true
]

{ #category : #accessing }
FAClassTranslator >> doNotGeneratePragma [
	^ IlliciumVirtualMachineAPI doNotGeneratePragma
]

{ #category : #'translation-api' }
FAClassTranslator >> getMethod: aSelector [
	^ mainTranslator methodNamed: aSelector
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

{ #category : #finishing }
FAClassTranslator >> postTranslationVisitors [
	"should return an array of visitors (that should not be run concurently, for now)"
	^ self subclassResponsibility
]

{ #category : #typing }
FAClassTranslator >> program [
	^ mainTranslator program
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
	| cu |
	cu := ASTCCompilationUnit new.

	cu add: (self translateClassMethods: aClass).
	cu add: (self translateClassState: aClass ).

	^ cu
]

{ #category : #'translation-api' }
FAClassTranslator >> translateClassMethods: aClass [ 
	| cu methods |
	cu := ASTCCompilationUnit new.
	methods := self program methodsFromClass: aClass.
	methods collect: [ :aMethod | self translateMethodNode: aMethod ] into: cu.
	^ cu 
]

{ #category : #'translation-state' }
FAClassTranslator >> translateClassState: aClass [
	| varDeclaration struct cu stateDeclaration |
	cu := ASTCCompilationUnit new.
	aClass allInstVarNames ifEmpty:[ ^ cu ].
	
	varDeclaration := (stateTranslator at: #instanceVariable) translateInstanceVariablesOf: aClass.
	
	self isStatefulCode ifFalse:[ ^ varDeclaration ].
	
	struct := ASTCStructureDefinition new.
	varDeclaration declarations do: [ :aVarDecl | struct addMember: aVarDecl ].
	struct declaration: (ASTCStructureDeclaration new id: (ASTCIdentifier new id: aClass name)).
	stateDeclaration := ASTCVariableDeclaration new 
		type: (ASTCType new type: aClass; yourself) ; 
		id: self stateId;
		yourself.

	cu add: struct.
	cu add: stateDeclaration.
	

]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethod: aMethodNode [
	| cu functionDefinition |
	cu := ASTCCompilationUnit new.
	functionDefinition := self translateMethodNode: aMethodNode.
	cu add: functionDefinition.
	
	cu add: (self translateClassState: aMethodNode methodClass).
	
	^ cu
]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethod: aSelector fromClass: aClass [
	| methodsNode functionDefinitionNode |
	
	self halt. 
	self deprecated: #translateMethod:. 
	self prepareProgram.
	methodsNode := self getMethod: aSelector. "Only one selector occurence per program currently"
	functionDefinitionNode := self translateMethodNode: methodsNode.
	^ functionDefinitionNode
	
	"functionDefinitionsASTs size = 1 
		ifTrue: [
			aClass allInstVarNames 
				ifEmpty:[ ^ functionDefinitionsASTs anyOne ]
				ifNotEmpty:[ | cu stateStuff |
					cu := ASTCCompilationUnit new.
					stateStuff := self translateClassState: aClass.
					self addState: stateStuff to: cu.
					self addTranslatedMethods: functionDefinitionsASTs to: cu.
					self postTranslationVisitsFor: cu.
					^ cu
					]
			].
	
	self error: 'Not planned currently, please report it.'
		 
	
	"
]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethodNode: aMethodNode [
	^ methodTranslator translateMethod: aMethodNode
]

{ #category : #typing }
FAClassTranslator >> typeAnnotatorClass [
	" This should return the class used to annotate types on RB ASTs"
	^ self subclassResponsibility 
]
