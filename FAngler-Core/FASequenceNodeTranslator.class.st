Class {
	#name : #FASequenceNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FASequenceNodeTranslator >> translateNode: aSequenceNode [
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
FASequenceNodeTranslator >> translateTemporaryDeclaration: aSequenceNode into: anASTCBlock [
	"TemporaryDeclarationNodes are actually just temporaryNodes in the AST. 
	so we have to use this hackish way."
	| varToDeclare |
	varToDeclare := aSequenceNode propertyAt: FAVariableDeclarationAnnotator propertyName.
		 
	varToDeclare do:[:aTempNode| 
		anASTCBlock addDeclaration: (methodTranslator visitTemporaryDeclarationNode: aTempNode)
		].
]
