Class {
	#name : #FASuperNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-nodes-translators'
}

{ #category : #translate }
FASuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
