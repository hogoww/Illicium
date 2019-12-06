Class {
	#name : #ASTCTemporaryNodesTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCTemporaryNodesTranslator >> translateNode: aTemporaryDeclarationNode [
	1 halt.
	^ ASTCDeclarationStatement new
				pharoNode: aTemporaryDeclarationNode;
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type:
									(ASTCType new
										type: (methodTranslator getNodeTranslationType: aTemporaryDeclarationNode variable);
										yourself);
								id: (aTemporaryDeclarationNode variable acceptVisitor: methodTranslator);
								yourself);
						yourself);
				yourself
]
