Class {
	#name : #ASTCBlockNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCBlockNodeTranslator >> translateNode: aBlockNode withMainTranslator: aTranslator [
	| res container |
	res := ASTCBlock new.
	container := ASTCContainer new.
	aBlockNode statements do: [ :each | | astCStatement |
		astCStatement := (each acceptVisitor: aTranslator) asASTCStatement.
		container add: astCStatement ].
	res statements: container.
	^ res
]
