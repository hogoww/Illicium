Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode withMainTranslator: aTranslator [
	| res container |
	res := ASTCBlock new.
	container := ASTCContainer new.
	aBlockNode statements
		collect: [ :each | (each acceptVisitor: aTranslator) asASTCStatement ]
		into: container.
	res statements: container.
	^ res
]
