Class {
	#name : #ASTCCascadeNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCCascadeNodeTranslator >> translateNode: aCascadeNode [
	| res |
	res := ASTCBlock new.
	aCascadeNode messages do: [:aMessage| res addStatement: (aMessage acceptVisitor: methodTranslator) asStatement ].
	^ res
]
