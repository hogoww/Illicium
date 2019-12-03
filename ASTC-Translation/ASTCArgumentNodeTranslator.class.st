Class {
	#name : #ASTCArgumentNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCArgumentNodeTranslator >> translateNode: anArgumentNode [
	| argIdentifier |
	argIdentifier := ASTCIdentifier new
		id: anArgumentNode name;
		yourself.
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
				argIdentifier.
			]
]
