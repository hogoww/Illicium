Class {
	#name : #MASlangMethodNodeTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangMethodNodeTranslator >> translateNode: aMethodNode [
	| functionDefinition |
	functionDefinition := super translateNode: aMethodNode.
	
	(aMethodNode hasPragmaNamed: #api) ifFalse: [ 
		functionDefinition declaration qualifiers add: #static 
		].
	^ functionDefinition
]
