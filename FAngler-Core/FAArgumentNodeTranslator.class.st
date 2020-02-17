Class {
	#name : #FAArgumentNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-nodes-translators'
}

{ #category : #translate }
FAArgumentNodeTranslator >> translateNode: anArgumentNode [
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
