Class {
	#name : #MASlangReturnNodeTranslator,
	#superclass : #FAReturnNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangReturnNodeTranslator >> translateNode: aReturnNode [
	| 	returnedExpression |
	
	returnedExpression := (aReturnNode value acceptVisitor: methodTranslator) ifNil:[ ASTCEmptyStatement new ].
	
	^ (aReturnNode value isSelf 
		or: [ (methodTranslator getNodeConcreteType: aReturnNode value) type = #void ])
		ifTrue: [ 
			ASTCBlock new
				addStatement: returnedExpression asStatement;
				addStatement: (ASTCReturn new expression: nil ; yourself);
				yourself ]
		ifFalse: [ 
			ASTCReturn new
				pharoNode: aReturnNode ;
				expression: returnedExpression;
				yourself ].
	

]
