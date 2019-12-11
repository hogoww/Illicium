Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> asStatement [

	^ ASTCExpressionStatement expression: self
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> equals: anExpression [
	^ ASTCEqualityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]
