Class {
	#name : #ANSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'Angler-Slang'
}

{ #category : #'program-configuration' }
ANSlangClassTranslator >> addMethod: aCollection [
	program addMethod: aCollection
]

{ #category : #typing }
ANSlangClassTranslator >> annotateMethodsASTWithTypes: methodsASTs [
	| typeAnnotator |
	typeAnnotator := self typeAnnotatorClass new
		inferer: inferer;
		yourself.
	methodsASTs
		do: [ :aMethodAST | aMethodAST acceptVisitor: typeAnnotator ].
	^ methodsASTs
]

{ #category : #'program-configuration' }
ANSlangClassTranslator >> annotateProgramWith: aClass [
	self flag: #slang.
	aClass declareCVarsIn: inferer.

	self program methodsDo: [ :each | inferer addMethod: (each asTranslationMethodOfClass: TMethod)].
	[inferer inferTypesForImplicitlyTypedVariablesAndMethods.] timeToRun.
	
	self annotateMethodsASTWithTypes: program methods.
	program isFullyAnnotated: true
	
]

{ #category : #transformations }
ANSlangClassTranslator >> applyTransformationsOn: aMethodNode [ 
	| method |
	method := aMethodNode copy.
	self transformations do: [:aTransformation|
		aTransformation applyOnMethod: method ofProgram: program.
		].
	^ method
]

{ #category : #initialization }
ANSlangClassTranslator >> initialize [
	super initialize.
	inferer := CCodeGeneratorGlobalStructure new.
	methodTranslator methodNodeTranslator: ANSlangMethodNodeTranslator new.
	methodTranslator literalValueNodeTranslator: ANSlangLiteralValueNodeTranslator new.
	methodTranslator returnNodeTranslator: ANSlangReturnNodeTranslator new.
	methodTranslator temporaryDeclarationNodeTranslator: ANSlangTemporaryDeclarationNodesTranslator new.
	methodTranslator assignmentNodeTranslator: ANSlangAssignmentNodeTranslator new.
	program := ANProgram new.
]

{ #category : #'special selectors' }
ANSlangClassTranslator >> isSpecialSelector: aString [ 
	
	^ ANSlangReceiver slangReservedSelector includes: aString
]

{ #category : #initialization }
ANSlangClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #check }
ANSlangClassTranslator >> preTranslationConstraintCheck: aClass [
	((aClass allSuperclasses
		includes: InterpreterPlugin) or:[ aClass = InterpreterPrimitives])
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]

{ #category : #visiting }
ANSlangClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { ANSlangDeclarationAnnotator }
]

{ #category : #check }
ANSlangClassTranslator >> preTypeInference: aClass [
	| piType |
	piType := inferer typeForClass: InterpreterPlugin.
	piType
		instanceVariable: #interpreterProxy
		ifPresent: [ piType instanceVariables
				at: #interpreterProxy
					put: (PIExplicitType new
					name: #interpreterProxy;
					owner: piType;
					explicitType: (inferer typeProvider createConcreteType: InterpreterProxy));
				yourself ]
	"For now, handled by the Slang printer as part of the basic output of every plugin"
	"piType instanceVariable: #moduleName
	ifPresent: [ piType instanceVariables at:#moduleName put: 
		(inferer types createConcreteType: String) ]."
]

{ #category : #'translation-api' }
ANSlangClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [ 
	| method |
	aClass declareCVarsIn: inferer.
	method := program methodNamed: aSelector.
	program isFullyAnnotated ifFalse: [ self annotateProgramWith: aClass ].

	method := self applyTransformationsOn: method.
	
	^ { method }
]

{ #category : #accessing }
ANSlangClassTranslator >> transformations [
	| transformations |
	transformations := OrderedCollection new.
	transformations add: (ANSlangInliner translator: self).
	^ transformations
]

{ #category : #'translation-api' }
ANSlangClassTranslator >> translateClass: aClass [ 
	self error: 'not adapted to refactor to use Slang yet'
]

{ #category : #typing }
ANSlangClassTranslator >> typeAnnotatorClass [
	^ ANSlangTypeAnnotator
]

{ #category : #'translation-api' }
ANSlangClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	^ self getReplacementType: (inferer typeOfVariable: anIVName)
]
