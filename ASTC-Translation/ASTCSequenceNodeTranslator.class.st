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
	
	(aSequenceNode temporaries 
		select: [:aTempDecl| aTempDecl propertyAt: ASTCShouldItBeDeclared property ]) 
		collect: [:aTempDecl| aTempDecl acceptVisitor: methodTranslator ]
		into: res statements.
	
	aSequenceNode statements collect: [:each | (each acceptVisitor: methodTranslator) asASTCStatement] into: res statements.
	^res.
]
