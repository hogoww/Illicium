Class {
	#name : #ANSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'Angler-Slang'
}

{ #category : #initialization }
ANSlangClassTranslator >> initialize [
	super initialize.
	inferer := CCodeGeneratorGlobalStructure new.
	methodTranslator literalValueNodeTranslator: ANSlangLiteralValueNodeTranslator new.
	methodTranslator returnNodeTranslator: ANSlangReturnNodeTranslator new.
	methodTranslator temporaryDeclarationNodeTranslator: ANSlangTemporaryDeclarationNodesTranslator new.
	methodTranslator assignmentNodeTranslator: ANSlangAssignmentNodeTranslator new.
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
	method := (aClass lookupSelector: aSelector) ast copy.
	inferer addMethod: (method asTranslationMethodOfClass: TMethod).
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	
	inferer methodNamed: aSelector.
	
	self annotateMethodsASTWithTypes: { method }.
	^ { method }
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