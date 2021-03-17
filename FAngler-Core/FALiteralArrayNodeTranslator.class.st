Class {
	#name : #FALiteralArrayNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FALiteralArrayNodeTranslator >> translateNode: anArrayNode [
	| literals |
	literals := anArrayNode contents collect:[ :anExpression | 
		 anExpression isLiteralNode ifFalse: [ self error: 'don''t know whether we should authorize that!' ].
		anExpression acceptVisitor: methodTranslator.
		].
	
	^ ASTCArrayLiteral new
		literals: literals;
		yourself
]
