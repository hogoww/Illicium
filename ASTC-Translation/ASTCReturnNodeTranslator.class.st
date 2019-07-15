Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode withMainTranslator: aTranslator [
	^ ASTCReturn new
		expression: (aReturnNode value acceptVisitor: aTranslator);
		yourself
]
