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

	program prepareWithInferer: self inferer inTranslator: self
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

{ #category : #translation }
MASlangClassTranslator >> inferer [
	^ mainTranslator inferer
]

{ #category : #initialization }
MASlangClassTranslator >> initialize [
	super initialize.
	methodTranslator methodNodeTranslator: MASlangMethodNodeTranslator new.
	methodTranslator literalValueNodeTranslator: MASlangLiteralValueNodeTranslator new.
	methodTranslator returnNodeTranslator: MASlangReturnNodeTranslator new.
	methodTranslator temporaryDeclarationNodeTranslator: MASlangTemporaryDeclarationNodesTranslator new.
	methodTranslator assignmentNodeTranslator: MASlangAssignmentNodeTranslator new.
	program := MASlangProgram new.
]

{ #category : #testing }
MASlangClassTranslator >> isGlobalInstanceVariable: aString [ 
	
	^ (self inferer globalsAsSet includes: aString)
		and: [ self inferer placeInStructure: aString ]
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

{ #category : #'translation-api' }
MASlangClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [ 
	| method |

	method := program methodNamed: aSelector.
	method := self applyTransformationsOn: method.
	
	^ { method }
]

{ #category : #accessing }
MASlangClassTranslator >> transformations [
	| transformations |
	transformations := OrderedCollection new.
	transformations add: (MAGlobalStructureAccessTransformer translator: self).
	transformations add: (MASlangMinimalInliner translator: self).
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
	^ self getReplacementType: (self inferer typeOfVariable: anIVName)
]
