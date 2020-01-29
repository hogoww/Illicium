Class {
	#name : #ASTCArgumentNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCArgumentNodeTranslator >> translateNode: anArgumentNode [
	| argIdentifier |
	argIdentifier := ASTCIdentifier id: anArgumentNode name.
	
	^ anArgumentNode parent isMethod
		ifTrue: [ 
			ASTCVariableDeclaration new
				pharoNode: anArgumentNode;
				id: argIdentifier;
				type:
					(ASTCType new
						type: (methodTranslator getNodeTranslationType: anArgumentNode);
						yourself);
				yourself.
			]
		ifFalse: [ 
				argIdentifier
			]
]
