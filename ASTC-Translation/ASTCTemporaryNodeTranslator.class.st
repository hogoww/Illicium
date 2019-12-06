Class {
	#name : #ASTCTemporaryNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCTemporaryNodeTranslator >> translateNode: aNode [
	^ methodTranslator visitVariableNode: aNode
]

{ #category : #translate }
ASTCTemporaryNodeTranslator >> visitTemporaryNodes: aTemporaryNode [
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
