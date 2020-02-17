Class {
	#name : #ASTCSequenceNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateNode: aSequenceNode [
	| res |
	res := ASTCBlock new.
	res pharoNode: aSequenceNode.
	self translateTemporaryDeclaration: aSequenceNode into: res.
	"Do not use collect to use the custom addStatement. it ignores emptyStatements."
	aSequenceNode statements
		do: [ :aPharoStatement | 
			res addStatement: 
				(aPharoStatement acceptVisitor: methodTranslator) asStatement ].
		
	^ res
]

{ #category : #translate }
ASTCSequenceNodeTranslator >> translateTemporaryDeclaration: aSequenceNode into: anASTCBlock [
	"TemporaryDeclarationNodes are actually just temporaryNodes in the AST. 
	so we have to use this hackish way."
	| varToDeclare |
	varToDeclare := aSequenceNode propertyAt: ASTCVariableDeclarationAnnotator property.
		 
	varToDeclare do:[:aTempName| 
		anASTCBlock addDeclaration: (methodTranslator visitTemporaryDeclarationNode: aTempName)
		].
]
