Class {
	#name : #FAReturnNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAReturnNodeTranslator >> translateNode: aReturnNode [
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: (aReturnNode value acceptVisitor: methodTranslator);
		yourself
]
