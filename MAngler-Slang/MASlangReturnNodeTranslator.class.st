Class {
	#name : #MASlangReturnNodeTranslator,
	#superclass : #FAReturnNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangReturnNodeTranslator >> translateNode: aReturnNode [
	| 	returnedExpression |
	
	returnedExpression := (aReturnNode value acceptVisitor: methodTranslator) ifNil:[ ASTCEmptyStatement new ].
	
	self haltIf: aReturnNode methodNode selector = #indexOfSegment.
	^ (aReturnNode value isSelf 
		or: [ (methodTranslator getNodeTranslationType: aReturnNode value) type type type = #void ])
		ifTrue: [ 
			ASTCBlock new
				addStatement: returnedExpression;
				addStatement: (ASTCReturn new expression: nil ; yourself);
				yourself ]
		ifFalse: [ 
			ASTCReturn new
				pharoNode: aReturnNode ;
				expression: returnedExpression;
				yourself ].
	

]
