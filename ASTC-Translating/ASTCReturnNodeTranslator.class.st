Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode withMainTranslator: aTranslator [	
	^ASTCReturn new expression: (aReturnNode value acceptVisitor:self) ; yourself. 
]
