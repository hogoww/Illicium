Class {
	#name : #MASlangInstanceVariableNodeTranslator,
	#superclass : #FAInstanceVariableNodeTranslator,
	#category : #'MAngler-Slang-Struct Nodes Translators'
}

{ #category : #translate }
MASlangInstanceVariableNodeTranslator >> translateNode: anInstanceVariableNode [
	^ anInstanceVariableNode binding slot owningClass = anInstanceVariableNode methodNode methodClass
		ifTrue: [ (ASTCIdentifier id: #__self__in_method__)
			-> 
			(ASTCIdentifier id: anInstanceVariableNode name) ]
		ifFalse: [ 
			self halt. "currently unused, I want to see a usecase before validating it."
			(ASTCIdentifier id: anInstanceVariableNode name) ]
]
