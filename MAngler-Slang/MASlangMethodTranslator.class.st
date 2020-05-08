Class {
	#name : #MASlangMethodTranslator,
	#superclass : #FAMethodTranslator,
	#instVars : [
		'structTypesNodeTranslators'
	],
	#category : #'MAngler-Slang-Translation'
}

{ #category : #initialization }
MASlangMethodTranslator >> initialize [ 
	super initialize.
	structTypesNodeTranslators := translators copy.
	structTypesNodeTranslators
		at: #instanceVariableNodeTranslator put: (MASlangInstanceVariableNodeTranslator new methodTranslator: self; yourself);
		at: #selfNodeTranslator put: (MASlangSelfNodeTranslator new methodTranslator: self ; yourself)
]

{ #category : #initialization }
MASlangMethodTranslator >> visitInstanceVariableNode: anInstanceVariableNode [
	^ anInstanceVariableNode methodNode methodClass isStructClass 
		ifFalse:[ super visitInstanceVariableNode: anInstanceVariableNode ]
	 	ifTrue: [ (structTypesNodeTranslators at: #instanceVariableNodeTranslator) translateNode: anInstanceVariableNode ]
]

{ #category : #initialization }
MASlangMethodTranslator >> visitSelfNode: aSelfNode [
	^ aSelfNode methodNode methodClass isStructClass 
		ifFalse:[ super visitSelfNode: aSelfNode ]
	 	ifTrue: [ (structTypesNodeTranslators at: #selfNodeTranslator) translateNode: aSelfNode ]
]
