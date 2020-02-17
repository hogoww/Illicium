Class {
	#name : #FATemporaryDeclarationNodesTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FATemporaryDeclarationNodesTranslator >> translateNode: aTemporaryDeclarationNode [
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
