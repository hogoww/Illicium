Class {
	#name : #FATemporaryNodeTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FATemporaryNodeTranslator >> translateNode: aNode [
	^ methodTranslator visitVariableNode: aNode
]

{ #category : #translate }
FATemporaryNodeTranslator >> visitTemporaryNodes: aTemporaryNode [
	self halt.
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
