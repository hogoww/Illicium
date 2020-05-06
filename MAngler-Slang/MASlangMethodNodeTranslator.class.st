Class {
	#name : #MASlangMethodNodeTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translation }
MASlangMethodNodeTranslator >> translateMacro: aMethodNode [
	^ ASTCPreprocessorDefine new 
		name: (ASTCIdentifier new id: (FAFormatHelper formatSelector: aMethodNode selector) ; yourself) ; 
		value: ((aMethodNode hasPragmaNamed: #cmacro)
			"heuristic, that all cmacro pragmas are value returned"
			ifTrue: [ aMethodNode statements last value acceptVisitor: methodTranslator ]
			ifFalse: [ ASTCRawCCode new cCode: (aMethodNode pragmaNamed: #cmacro:) arguments first value ]);
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
