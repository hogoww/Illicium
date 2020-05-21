Class {
	#name : #MASlangClassTranslator,
	#superclass : #FAClassTranslator,
	#instVars : [
		'constantsToTranslate',
		'structStateTranslator'
	],
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

	structStateTranslator := FAStructStateTranslator new classTranslator: self; yourself.

	"specialization of node transalators"
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
MASlangClassTranslator >> shouldTranslateVariable: aVariableNAme [
	constantsToTranslate ifNil:[ constantsToTranslate := self inferer constantsToTranslate ].
	^ constantsToTranslate includes: aVariableNAme
]

{ #category : #typing }
MASlangClassTranslator >> translateClassState: aClass [
	^ aClass isStructClass
		ifFalse: [ stateTranslator translateStateOf: aClass ]
		ifTrue: [ structStateTranslator translateStateOf: aClass  ].
]

{ #category : #typing }
MASlangClassTranslator >> typeAnnotatorClass [
	^ MASlangTypeAnnotator
]

{ #category : #'translation-api' }
MASlangClassTranslator >> typeOfSlot: aSlot [
	| owningClass cType |
	owningClass := aSlot owningClass.
	cType := "self getReplacementType: "
		(CType createFrom: 
			((aSlot owningClass isStructClass
				"the information is not stored in the CCodeGenerator, and directly accesible in the class"
				ifTrue: [ owningClass returnTypeForAccessor: aSlot name] 
				"this is store in the CCodeGenerator"
				ifFalse: [ self inferer typeOfVariable: aSlot name ]) ifNil: 'sqInt')).

	(owningClass isStructClass and: [ cType type = owningClass name or: [ cType type = owningClass structTypeName ]]) ifTrue: [ cType explicitStruct: true ].
	
	^ self getReplacementType: cType
	
					
]
