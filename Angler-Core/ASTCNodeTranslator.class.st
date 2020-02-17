Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator'
	],
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCNodeTranslator >> currentClass [
	 ^ methodTranslator currentClass
]

{ #category : #translate }
ASTCNodeTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #translate }
ASTCNodeTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #'as yet unclassified' }
ASTCNodeTranslator >> stateName [
	^ methodTranslator stateName
]

{ #category : #translate }
ASTCNodeTranslator >> translateNode: aNode [
	self subclassResponsibility
]
