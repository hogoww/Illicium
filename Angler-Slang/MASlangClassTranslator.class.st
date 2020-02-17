Class {
	#name : #MASlangClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'Angler-Slang-translators'
}

{ #category : #'program-configuration' }
MASlangClassTranslator >> addMethod: aCollection [
	program addMethod: aCollection
]

{ #category : #'program-configuration' }
MASlangClassTranslator >> annotateProgramWith: aClass [

	program prepareWithInferer: inferer inTranslator: self
]

{ #category : #transformations }
MASlangClassTranslator >> applyTransformationsOn: aMethodNode [ 
	| method |
	method := aMethodNode copy.
	self transformations do: [:aTransformation|
		aTransformation applyOnMethod: method ofProgram: program.
		].
	^ method
]

{ #category : #initialization }
MASlangClassTranslator >> initialize [
	super initialize.
	inferer := CCodeGeneratorGlobalStructure new.
	methodTranslator methodNodeTranslator: MASlangMethodNodeTranslator new.
	methodTranslator literalValueNodeTranslator: MASlangLiteralValueNodeTranslator new.
	methodTranslator returnNodeTranslator: MASlangReturnNodeTranslator new.
	methodTranslator temporaryDeclarationNodeTranslator: MASlangTemporaryDeclarationNodesTranslator new.
	methodTranslator assignmentNodeTranslator: MASlangAssignmentNodeTranslator new.
	program := FAProgram new.
]

{ #category : #testing }
MASlangClassTranslator >> isGlobalInstanceVariable: aString [ 
	
	^ (inferer globalsAsSet includes: aString)
		and: [ inferer placeInStructure: aString ]
]

{ #category : #'special selectors' }
MASlangClassTranslator >> isSpecialSelector: aString [ 
	
	^ MASlangReceiver slangReservedSelector includes: aString
]

{ #category : #initialization }
MASlangClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #configuration }
MASlangClassTranslator >> postTranslationVisitors [
	^ {
		FAStatementsBecomeExpressions new
	}
]

{ #category : #check }
MASlangClassTranslator >> preTranslationConstraintCheck: aClass [
	((aClass allSuperclasses
		includes: InterpreterPlugin) or:[ aClass = InterpreterPrimitives])
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]

{ #category : #visiting }
MASlangClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { 
		MASlangTypeAnnotator new inferer: inferer ; yourself. "always take the latest inferer"
		MASlangDeclarationAnnotator new
		}
]

{ #category : #check }
MASlangClassTranslator >> preTypeInference: aClass [
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
MASlangClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [ 
	| method |
	aClass declareCVarsIn: inferer.

	self annotateProgramWith: aClass.

	method := program methodNamed: aSelector.
	method := self applyTransformationsOn: method.
	
	^ { method }
]

{ #category : #accessing }
MASlangClassTranslator >> transformations [
	| transformations |
	transformations := OrderedCollection new.
	transformations add: (MASlangInliner translator: self).
	transformations add: (MAGlobalStructureAccessTransformer translator: self).
	^ transformations
]

{ #category : #'translation-api' }
MASlangClassTranslator >> translateClass: aClass [ 
	self error: 'not adapted to refactor to use Slang yet'
]

{ #category : #typing }
MASlangClassTranslator >> typeAnnotatorClass [
	^ MASlangTypeAnnotator
]

{ #category : #'translation-api' }
MASlangClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	^ self getReplacementType: (inferer typeOfVariable: anIVName)
]
