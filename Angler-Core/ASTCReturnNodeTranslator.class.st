Class {
	#name : #ASTCReturnNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCReturnNodeTranslator >> translateNode: aReturnNode [
	aReturnNode value isSelf ifTrue: [ ^ ASTCEmptyStatement new ].
	
	^ ASTCReturn new
		pharoNode: aReturnNode ;
		expression: (aReturnNode value acceptVisitor: methodTranslator);
		yourself
]
