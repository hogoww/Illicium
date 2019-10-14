Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode [
	| res container |
	res := ASTCBlock new.
	container := ASTCContainer new.
	aBlockNode statements
		collect: [ :each | (each acceptVisitor: methodTranslator) asASTCStatement ]
		into: container.
	res statements: container.
	^ res
]
