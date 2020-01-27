Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode [
	
	^ ASTCFunctionDefinition new
		pharoNode: aMethodNode;
		declaration:
			(ASTCFunctionDeclaration new
				qualifiers: OrderedCollection new;
				type:
					(ASTCType new
						type: (methodTranslator getNodeTranslationType: aMethodNode);
						yourself);
				id:
					(ASTCIdentifier new
						id: (ASTCFormatHelper formatSelector: aMethodNode selector);
						yourself);
				parameters: (aMethodNode arguments collect:[:each| each acceptVisitor: methodTranslator ]);
				yourself);
		body: (aMethodNode body acceptVisitor: methodTranslator);
		comment: aMethodNode commentOrNil;
		yourself
]
