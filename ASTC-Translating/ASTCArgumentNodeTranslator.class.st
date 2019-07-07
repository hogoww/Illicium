Class {
	#name : #ASTCArgumentNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCArgumentNodeTranslator >> translateNode: anArgumentNode withMainTranslator: aTranslator [
	| argIdentifier |
	argIdentifier := ASTCIdentifier new
		id: anArgumentNode name;
		yourself.
	^ anArgumentNode parent isMethod
		ifTrue: [ 
			ASTCVariableDeclaration new
				id: argIdentifier;
				type:
					(ASTCType new
						type: (aTranslator getNodeTranslationType: anArgumentNode);
						yourself);
				yourself.
			]
		ifFalse: [ 
				argIdentifier.
			]
]
