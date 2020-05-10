Class {
	#name : #FAMethodNodeTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAMethodNodeTranslator >> translateIdentifier: aMethodNode [
	^ ASTCIdentifier new
		id: (FAFormatHelper formatSelector: aMethodNode selector);
		yourself
]

{ #category : #translate }
FAMethodNodeTranslator >> translateNode: aMethodNode [

	^ ASTCFunctionDefinition new
		pharoNode: aMethodNode;
		declaration:
			(ASTCFunctionDeclaration new
				qualifiers: OrderedCollection new;
				type:
					(ASTCType new
						type: (methodTranslator getNodeTranslationType: aMethodNode);
						yourself);
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
