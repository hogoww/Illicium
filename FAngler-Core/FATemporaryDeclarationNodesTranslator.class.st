Class {
	#name : #FATemporaryDeclarationNodesTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FATemporaryDeclarationNodesTranslator >> translateNode: aTemporaryDeclarationNode [
	^ ASTCDeclarationStatement new
		pharoNode: aTemporaryDeclarationNode;
		declaration:
			(ASTCVariableDeclaration new
				type:
					(ASTCType new
						type: (methodTranslator getNodeTranslationType: aTemporaryDeclarationNode);
						yourself);
				id: (aTemporaryDeclarationNode acceptVisitor: methodTranslator);
				yourself);
		yourself
]
