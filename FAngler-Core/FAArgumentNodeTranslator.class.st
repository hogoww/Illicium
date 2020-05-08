Class {
	#name : #FAArgumentNodeTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAArgumentNodeTranslator >> asCIdentifier: anArgumentNode [
	^ ASTCIdentifier id: anArgumentNode name
]

{ #category : #translate }
FAArgumentNodeTranslator >> translateArgumentUsage: anArgumentNode [
	^ self asCIdentifier: anArgumentNode
]

{ #category : #translate }
FAArgumentNodeTranslator >> translateNode: anArgumentNode [
	^ anArgumentNode parent isMethod
		ifTrue: [ self translateParameterDeclaration: anArgumentNode ]
		ifFalse: [ self translateArgumentUsage: anArgumentNode ]
]

{ #category : #translate }
FAArgumentNodeTranslator >> translateParameterDeclaration: anArgumentNode [
	^ ASTCVariableDeclaration new
		pharoNode: anArgumentNode;
		id: (self asCIdentifier: anArgumentNode);
		type: (ASTCType new
			type: (methodTranslator getNodeTranslationType: anArgumentNode);
			yourself);
		yourself
]
