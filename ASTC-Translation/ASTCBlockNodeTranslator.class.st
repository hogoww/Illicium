Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode withMethodTranslator: aTranslator [
	| res container |
	res := ASTCBlock new.
	container := ASTCContainer new.
	aBlockNode statements
		collect: [ :each | (each acceptVisitor: aTranslator) asASTCStatement ]
		into: container.
	res statements: container.
	^ res
]
