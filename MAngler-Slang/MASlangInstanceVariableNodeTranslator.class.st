Class {
	#name : #MASlangInstanceVariableNodeTranslator,
	#superclass : #FAInstanceVariableNodeTranslator,
	#category : #'MAngler-Slang-Struct Nodes Translators'
}

{ #category : #translate }
MASlangInstanceVariableNodeTranslator >> translateNode: anInstanceVariableNode [
	^ (ASTCIdentifier id: #__self__in_method__)
		-> 
		(ASTCIdentifier id: anInstanceVariableNode name)
]
