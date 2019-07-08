Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode withMainTranslator: aTranslator [
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
						visitArgs: aMethodNode arguments with: self;
						yourself);
				yourself);
		body: (aMethodNode body acceptVisitor: aTranslator);
		yourself
]
