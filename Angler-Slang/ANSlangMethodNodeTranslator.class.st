Class {
	#name : #ANSlangMethodNodeTranslator,
	#superclass : #ASTCMethodNodeTranslator,
	#category : #'Angler-Slang-nodes-translators'
}

{ #category : #translate }
ANSlangMethodNodeTranslator >> translateNode: aMethodNode [
	| functionDefinition |
	functionDefinition := super translateNode: aMethodNode.
	
	(aMethodNode hasPragmaNamed: #api) ifFalse: [ 
		functionDefinition declaration qualifiers add: #static 
		].
	^ functionDefinition
]
