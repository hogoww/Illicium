Class {
	#name : #MASlangReturnNodeTranslator,
	#superclass : #FAReturnNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangReturnNodeTranslator >> translateNode: aReturnNode [
	| 	returnedExpression |
	
	returnedExpression := (aReturnNode value acceptVisitor: methodTranslator) ifNil:[ ASTCEmptyStatement new ].
	
	"special case for containsOnlyValidBecomeObjects: array1 and: array2 twoWay: isTwoWay copyHash: copyHash
	Needs to break control flow in two methods, for smalltalk behavior "
	(returnedExpression isBlock and: [ returnedExpression statements first isReturn ]) ifTrue:[ ^ returnedExpression ].
	
	
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
