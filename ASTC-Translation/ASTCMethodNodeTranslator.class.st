Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode withMethodTranslator: aTranslator [
	^ ASTCFunctionDefinition new
		declaration:
			(ASTCFunctionDeclaration new
				id:
					(ASTCIdentifier new
						id: (self formatSelector: aMethodNode selector);
						yourself);
				type:
					(ASTCType new
						type: (aTranslator getNodeTranslationType: aMethodNode);
						yourself);
				parameters:
					(ASTCContainer new
						visitArgs: aMethodNode arguments with: aTranslator;
						yourself);
				yourself);
		body: (aMethodNode body acceptVisitor: aTranslator);
		yourself
]
