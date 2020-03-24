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

{ #category : #'as yet unclassified' }
FAClassTranslator >> addClass: aClass [ 

	program addClass: aClass
]

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
	^ program methodNamed: aSelector
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
FAClassTranslator >> postTranslationVisitsFor: anASTCNode [ 
	self postTranslationVisitors do: [ :aVisitor | anASTCNode acceptVisitor: aVisitor ].
	^ anASTCNode
]

{ #category : #'translation-api' }
FAClassTranslator >> preTranslationConstraintCheck: aClass [
	"empty hook"
]

{ #category : #typing }
FAClassTranslator >> preTypeInference: aClass [
	"empty hook"
]

{ #category : #'translation-api' }
FAClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	
	self subclassResponsibility
]

{ #category : #typing }
FAClassTranslator >> program [
	^ program
]

{ #category : #typing }
FAClassTranslator >> program: aProgram [

	program := aProgram
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
FAClassTranslator >> translateMethod: aMethodNode [
	| cu functionDefinition |
	cu := ASTCCompilationUnit new.
	functionDefinition := self translateMethodNode: aMethodNode.
	cu add: functionDefinition.
	
	
	aMethodNode methodClass allInstVarNames ifEmpty:[ ^ cu ].
	cu add: (self translateClassState: aMethodNode methodClass).
	"	self postTranslationVisitsFor: cu. should be on the method translator."
	^ cu
]

{ #category : #'translation-api' }
FAClassTranslator >> translateMethod: aSelector fromClass: aClass [
	| methodsNode functionDefinitionNode |
	
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
