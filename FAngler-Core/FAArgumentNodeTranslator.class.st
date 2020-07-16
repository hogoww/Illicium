Class {
	#name : #FAArgumentNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
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
	"We create argumentNodes by hand"
	^ (anArgumentNode parent ifNotNil: [ :aParent | aParent isMethod ] ifNil: false)
		ifTrue: [ self translateParameterDeclaration: anArgumentNode ]
		ifFalse: [ self translateArgumentUsage: anArgumentNode ]
]

{ #category : #translate }
FAArgumentNodeTranslator >> translateParameterDeclaration: anArgumentNode [
	^ ASTCVariableDeclaration new
		pharoNode: anArgumentNode;
		id: (self asCIdentifier: anArgumentNode);
		type: (methodTranslator getNodeConcreteType: anArgumentNode) asCTypeNode;
		yourself
]
