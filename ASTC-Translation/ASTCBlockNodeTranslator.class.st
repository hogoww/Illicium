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
	aBlockNode statements
		collect: [ :each | (each acceptVisitor: methodTranslator) asASTCStatement ]
		into: res statements.
	^ res
]
