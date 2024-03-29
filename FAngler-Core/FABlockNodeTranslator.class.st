Class {
	#name : #FABlockNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FABlockNodeTranslator >> translateNode: aBlockNode [
	^ (aBlockNode body acceptVisitor: methodTranslator)
		pharoNode: aBlockNode;
		comment: aBlockNode commentOrNil;
		yourself
]
