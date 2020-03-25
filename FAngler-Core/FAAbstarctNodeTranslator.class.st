Class {
	#name : #FAAbstarctNodeTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator'
	],
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAAbstarctNodeTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #translate }
FAAbstarctNodeTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #'as yet unclassified' }
FAAbstarctNodeTranslator >> stateName [
	^ methodTranslator stateName
]

{ #category : #translate }
FAAbstarctNodeTranslator >> translateNode: aNode [
	self flag: #todo. "cornercase on a use of a particular printf use..."
	^ ASTCLiteral value: #todoArrayNodeTranslation.
]
