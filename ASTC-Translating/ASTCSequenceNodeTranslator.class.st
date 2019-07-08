Class {
	#name : #ASTCSequenceNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateNode: aSequenceNode withMainTranslator: aTranslator [
	| res |
	res:=ASTCBlock new.
	res statements: (aSequenceNode statements collect: [:each | (each acceptVisitor: aTranslator) asASTCStatement] into: ASTCContainer new).
	^res.
]
