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
	"Do not use collect to use the custom addStatement. it ignores emptyStatements."
	aSequenceNode statements
		do: [ :aPharoStatement | 
			res addStatement: 
				(aPharoStatement acceptVisitor: methodTranslator) asStatement ].
		
	^ res
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
