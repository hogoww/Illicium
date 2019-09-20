Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode withMethodTranslator: aTranslator [
	^ ASTCReturn new
		expression: (aReturnNode value acceptVisitor: aTranslator);
		yourself
]
