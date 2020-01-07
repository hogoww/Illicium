Class {
	#name : #ASTCSequenceNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateNode: aSequenceNode [
	| res |
	res := ASTCBlock new.
	res pharoNode: aSequenceNode.

	self translateTemporaryDeclaration: aSequenceNode temporaries into: res statements.
	aSequenceNode statements collect: [:each | (each acceptVisitor: methodTranslator) asStatement] into: res statements.
	
	^res.
]

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateTemporaryDeclaration: temporaryNodes into: aCollection [
	"TemporaryDeclarationNodes are actually just temporaryNodes in the AST. 
	so we have to use this hackish way."
	 ^ (temporaryNodes 
		select: [:aTempDecl| aTempDecl propertyAt: ASTCShouldItBeDeclaredAnnotator property ])
		collect: [:aTempDecl| methodTranslator visitTemporaryDeclarationNode: aTempDecl ]
		into: aCollection
]
