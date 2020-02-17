Class {
	#name : #FACascadeNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FACascadeNodeTranslator >> translateNode: aCascadeNode [
	| res |
	res := ASTCBlock new.
	aCascadeNode messages do: [:aMessage| res addStatement: (aMessage acceptVisitor: methodTranslator) asStatement ].
	^ res
]
