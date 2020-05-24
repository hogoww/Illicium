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
				type: (methodTranslator getNodeConcreteType: aTemporaryDeclarationNode) asCTypeNode;
				id: (aTemporaryDeclarationNode acceptVisitor: methodTranslator);
				yourself);
		yourself
]
