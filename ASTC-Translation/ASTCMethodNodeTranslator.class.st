Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode [
	^ ASTCFunctionDefinition new
		declaration:
			(ASTCFunctionDeclaration new
				id:
					(ASTCIdentifier new
						id: (self formatSelector: aMethodNode selector);
						yourself);
				type:
					(ASTCType new
						type: (methodTranslator getNodeTranslationType: aMethodNode);
						yourself);
				parameters:
					(ASTCContainer new
						visitArgs: aMethodNode arguments with: methodTranslator;
						yourself);
				yourself);
		body: (aMethodNode body acceptVisitor: methodTranslator);
		yourself
]
