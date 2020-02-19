Class {
	#name : #FAThisContextNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
