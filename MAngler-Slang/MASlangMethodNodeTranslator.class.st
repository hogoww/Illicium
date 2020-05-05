Class {
	#name : #MASlangMethodNodeTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translation }
MASlangMethodNodeTranslator >> translateMacro: aMethodNode [
	^ ASTCPreprocessorDefine new 
		name: ((RBLiteralNode value: aMethodNode selector) acceptVisitor: methodTranslator) ; 
		value: (((aMethodNode hasPragmaNamed: #cmacro)
			"heuristic, that all cmacro pragmas are value returned"
			ifTrue: [ aMethodNode statements last value ]
			ifFalse: [ (aMethodNode pragmaNamed: #cmacro:) arguments first ])
				acceptVisitor: methodTranslator);
		yourself
]

{ #category : #translate }
MASlangMethodNodeTranslator >> translateNode: aMethodNode [
	| functionDefinition |
	
	aMethodNode isCMacro ifTrue:[ ^ self translateMacro: aMethodNode ].

	functionDefinition := super translateNode: aMethodNode.		
	(aMethodNode hasPragmaNamed: #api) ifFalse: [ 
		functionDefinition declaration qualifiers add: #static 
		].
	^ functionDefinition
]
