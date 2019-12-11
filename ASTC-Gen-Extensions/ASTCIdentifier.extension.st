Extension { #name : #ASTCIdentifier }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCIdentifier >> assign: anExpression [
	^ ASTCAssignmentOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]
