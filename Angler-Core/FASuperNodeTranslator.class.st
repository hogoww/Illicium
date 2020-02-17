Class {
	#name : #FASuperNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FASuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
