Class {
	#name : #FATemporaryNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-nodes-translators'
}

{ #category : #translate }
FATemporaryNodeTranslator >> translateNode: aNode [
	^ methodTranslator visitVariableNode: aNode
]

{ #category : #translate }
FATemporaryNodeTranslator >> visitTemporaryNodes: aTemporaryNode [
	1 halt.
	^ ASTCDeclarationStatement new
				pharoNode: aTemporaryNode;
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type:
									(ASTCType new
										type: (methodTranslator getNodeTranslationType: aTemporaryNode variable);
										yourself);
								id: (aTemporaryNode variable acceptVisitor: methodTranslator);
								yourself);
						yourself);
				yourself
]
