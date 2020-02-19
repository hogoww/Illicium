Class {
	#name : #FACascadeNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FACascadeNodeTranslator >> translateNode: aCascadeNode [
	| res |
	res := ASTCBlock new.
	aCascadeNode messages do: [:aMessage| res addStatement: (aMessage acceptVisitor: methodTranslator) asStatement ].
	^ res
]
