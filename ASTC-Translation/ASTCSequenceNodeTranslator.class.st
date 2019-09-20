Class {
	#name : #ASTCSequenceNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateNode: aSequenceNode withMethodTranslator: aTranslator [
	| res |
	res:=ASTCBlock new.
	res statements: (aSequenceNode statements collect: [:each | (each acceptVisitor: aTranslator) asASTCStatement] into: ASTCContainer new).
	^res.
]
