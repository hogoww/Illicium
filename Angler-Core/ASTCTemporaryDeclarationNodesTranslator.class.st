Class {
	#name : #ASTCTemporaryDeclarationNodesTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
ASTCTemporaryDeclarationNodesTranslator >> translateNode: aTemporaryDeclarationNode [
	^ ASTCDeclarationStatement new
				pharoNode: aTemporaryDeclarationNode;
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type:
									(ASTCType new
										type: (methodTranslator getNodeTranslationType: aTemporaryDeclarationNode);
										yourself);
								id: (aTemporaryDeclarationNode acceptVisitor: methodTranslator);
								yourself);
						yourself);
				yourself
]
