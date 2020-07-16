Class {
	#name : #FAMethodNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAMethodNodeTranslator >> translateIdentifier: aMethodNode [
	^ (FAFormatHelper formatSelector: aMethodNode selector) asCIdentifierNode
]

{ #category : #translate }
FAMethodNodeTranslator >> translateNode: aMethodNode [

	^ ASTCFunctionDefinition new
		pharoNode: aMethodNode;
		declaration:
			(ASTCFunctionDeclaration new
				qualifiers: OrderedCollection new;
				type: (methodTranslator getNodeConcreteType: aMethodNode) asCTypeNode;
				id: (self translateIdentifier: aMethodNode);
				parameters: (self translateParameters: aMethodNode);
				yourself);
		body: (aMethodNode body acceptVisitor: methodTranslator);
		comment: aMethodNode commentOrNil;
		yourself

]

{ #category : #translate }
FAMethodNodeTranslator >> translateParameters: aMethodNode [
	^ aMethodNode arguments collect: [ :each | each acceptVisitor: methodTranslator ]
]
