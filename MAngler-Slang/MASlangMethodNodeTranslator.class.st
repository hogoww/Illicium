Class {
	#name : #MASlangMethodNodeTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Slang-nodes-translators'
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
