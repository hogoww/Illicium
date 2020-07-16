Class {
	#name : #FAAbstractNodeTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator'
	],
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #include }
FAAbstractNodeTranslator >> addBooleanInclude [
	methodTranslator addInclude: #'<stdbool.h>'
]

{ #category : #translate }
FAAbstractNodeTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #translate }
FAAbstractNodeTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #'as yet unclassified' }
FAAbstractNodeTranslator >> stateName [
	^ methodTranslator stateName
]

{ #category : #translate }
FAAbstractNodeTranslator >> translateNode: aNode [
	self flag: #todo. "cornercase on a use of a particular printf use..."
	^ ASTCLiteral value: #todoArrayNodeTranslation.
]
