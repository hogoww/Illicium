Class {
	#name : #FAThisContextNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAThisContextNodeTranslator >> translateNode: aNode [
	self error: 'thisContext is not supported yet.'
]
