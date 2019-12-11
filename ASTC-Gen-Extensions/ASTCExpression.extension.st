Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> and: anExpression [
	^ ASTCAndOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> asStatement [

	^ ASTCExpressionStatement expression: self
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> castTo: aType [
	self assert: aType isType.
	^ ASTCCastOperator new
		type: aType;
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> equals: anExpression [
	^ ASTCEqualityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> not [
	^ ASTCLogicalNotOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> or: anExpression [
	^ ASTCOrOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]
