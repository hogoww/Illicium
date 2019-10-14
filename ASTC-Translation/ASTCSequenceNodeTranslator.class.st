Class {
	#name : #ASTCSequenceNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateNode: aSequenceNode [
	| res |
	res:=ASTCBlock new.
	res statements: (aSequenceNode statements collect: [:each | (each acceptVisitor: methodTranslator) asASTCStatement] into: ASTCContainer new).
	^res.
]
