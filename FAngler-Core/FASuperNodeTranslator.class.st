Class {
	#name : #FASuperNodeTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FASuperNodeTranslator >> translateNode: aNode [
	self error: 'super is not supported'
]
