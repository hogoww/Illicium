Class {
	#name : #ASTCCascadeNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCCascadeNodeTranslator >> translateNode: aCascadeNode [
	| res |
	res := ASTCBlock new.
	aCascadeNode messages do: [:aMessage| res addStatement: (aMessage acceptVisitor: methodTranslator) asStatement ].
	^ res
]
