Class {
	#name : #FAReturnNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'Angler-Core-nodes-translators'
}

{ #category : #translate }
FAReturnNodeTranslator >> translateNode: aReturnNode [
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: (aReturnNode value acceptVisitor: methodTranslator);
		yourself
]