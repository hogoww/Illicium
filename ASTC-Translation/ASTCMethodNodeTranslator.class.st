Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode [
	^ ASTCFunctionDefinition new
		pharoNode: aMethodNode;
		declaration:
			(ASTCFunctionDeclaration new
				id:
					(ASTCIdentifier new
						id: (self formatSelector: aMethodNode selector);
						yourself);
				type:
					(ASTCType new
						type: (methodTranslator getReplacementType: aMethodNode);
						yourself);
				parameters: (aMethodNode arguments collect:[:each| each acceptVisitor: methodTranslator ]);
				yourself);
		body: (aMethodNode body acceptVisitor: methodTranslator);
		yourself
]
