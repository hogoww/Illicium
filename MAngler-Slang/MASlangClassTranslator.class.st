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
	
	^ { method }
]

{ #category : #'translation-api' }
MASlangClassTranslator >> translateClass: aClass [
	| cu methods |
	cu := ASTCCompilationUnit new.
	methods := program methodsFromClass: aClass.
	methods do: [ :aMethod | cu add: (self translateMethod: aMethod) ].
	^ cu
]

{ #category : #typing }
MASlangClassTranslator >> typeAnnotatorClass [
	^ MASlangTypeAnnotator
]

{ #category : #'translation-api' }
MASlangClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	^ self getReplacementType: (self inferer typeOfVariable: anIVName)
]
