Class {
	#name : #MASlangClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #testing }
MASlangClassTranslator class >> isSpecialSelector: aSelector [
	^ MASlangTranslator isSpecialSelector: aSelector
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
]

{ #category : #initialization }
MASlangClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #configuration }
MASlangClassTranslator >> postTranslationVisitors [
	^ {
		FAStatementsBecomeExpressions new.
		"ASTCDebugStructureVisitor new" "currently disabled" 
		 " debugStructure should be last, to check that everything's working :)"
	}
]

{ #category : #typing }
MASlangClassTranslator >> typeAnnotatorClass [
	^ MASlangTypeAnnotator
]

{ #category : #'translation-api' }
MASlangClassTranslator >> typeOfSlot: aSlot [
	^ self getReplacementType: (self inferer typeOfVariable: aSlot name)
]

{ #category : #'translation-api' }
MASlangClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	self deprecated: #useTypeOfSlotInstead.
	^ self getReplacementType: (self inferer typeOfVariable: anIVName)
]
