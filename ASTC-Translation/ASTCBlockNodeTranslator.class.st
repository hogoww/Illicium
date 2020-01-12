Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode [
	| res |
	res := ASTCBlock new.
	res pharoNode: aBlockNode.
	"Do not use collect to use the custom addStatement. it ignores emptyStatements."
	aBlockNode statements
		do: [ :each | res statements addStatement: (each acceptVisitor: methodTranslator) asStatement ].
		
	^ res
]
