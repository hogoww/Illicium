Class {
	#name : #FABlockNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FABlockNodeTranslator >> translateNode: aBlockNode [
	^ (aBlockNode body acceptVisitor: methodTranslator)
		pharoNode: aBlockNode;
		comment: aBlockNode commentOrNil;
		yourself
]
