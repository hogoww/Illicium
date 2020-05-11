Class {
	#name : #MASlangMethodNodeTranslator,
	#superclass : #FAMethodNodeTranslator,
	#instVars : [
		'oldInstanceVariableTranslator',
		'oldSelfNodeTranslator'
	],
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #struct }
MASlangMethodNodeTranslator >> setStructTranslator [
	oldInstanceVariableTranslator := methodTranslator instanceVariableNodeTranslator.
	oldSelfNodeTranslator := methodTranslator selfNodeTranslator.
	
	methodTranslator instanceVariableNodeTranslator: 
		(MASlangInstanceVariableNodeTranslator new methodTranslator: self; yourself).
	methodTranslator selfNodeTranslator: 
		(MASlangSelfNodeTranslator new methodTranslator: self; yourself).
]

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
MASlangMethodNodeTranslator >> translateMethod: aMethodNode [
	| functionDefinition |
	
	aMethodNode methodClass isStructClass ifTrue: [ self setStructTranslator ].
	functionDefinition := super translateNode: aMethodNode.	
	aMethodNode methodClass isStructClass ifTrue: [ self unsetStructTranslator ].
	
	^ functionDefinition
]

{ #category : #translate }
MASlangMethodNodeTranslator >> translateNode: aMethodNode [
	| functionDefinition |
	
	aMethodNode isCMacro ifTrue:[ ^ self translateMacro: aMethodNode ].
	
	functionDefinition := self translateMethod: aMethodNode.
	
	(aMethodNode hasPragmaNamed: #api) ifFalse: [ 
		functionDefinition declaration qualifiers add: #static 
		].
	
	^ functionDefinition 
]

{ #category : #struct }
MASlangMethodNodeTranslator >> translateParameters: aMethodNode [
	| parameters |
	parameters := (super translateParameters: aMethodNode).
	
	aMethodNode methodClass isStructClass ifFalse: [ ^ parameters ].
	
	^ { (ASTCVariableDeclaration new 
		id: (ASTCIdentifier id: #__self__in_method__);
		type: 
		
		(ASTCType new type: (MASlangStructsReceiver new type: (CType createFrom: aMethodNode methodClass name)) asConstraint; yourself);
		
		yourself) } , parameters .
]

{ #category : #struct }
MASlangMethodNodeTranslator >> unsetStructTranslator [
	methodTranslator instanceVariableNodeTranslator: oldInstanceVariableTranslator.
	methodTranslator selfNodeTranslator: oldSelfNodeTranslator.
]
