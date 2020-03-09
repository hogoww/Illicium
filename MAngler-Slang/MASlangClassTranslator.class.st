Class {
	#name : #MASlangClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'MAngler-Slang-Translation'
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

{ #category : #visiting }
MASlangClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ {
		MASlangCleaner new.
		MASlangSuperAnnotator new classTranslator: self ; yourself. 
		MASlangTypeAnnotator new inferer: inferer ; yourself. "always take the latest inferer"
		MASlangDeclarationAnnotator new "this is required to be after the typeAnnotator. see its documention"
		}
]

{ #category : #'translation-api' }
MASlangClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [ 
	| method |

	self annotateProgramWith: aClass.

	method := program methodNamed: aSelector.
	method := self applyTransformationsOn: method.
	
	^ { method }
]

{ #category : #accessing }
MASlangClassTranslator >> transformations [
	| transformations |
	transformations := OrderedCollection new.
	transformations add: (MASlangMinimalInliner translator: self).
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
