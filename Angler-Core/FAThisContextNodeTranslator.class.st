Class {
	#name : #FAThisContextNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FAThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
