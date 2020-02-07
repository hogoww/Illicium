Extension { #name : #ASTCIf }

{ #category : #'*ASTC-Core-Extensions' }
ASTCIf >> becomeTernaryConditionalOperator [
	"protocol: converting"
	| asTernary |
	asTernary := ASTCTernaryConditionalOperator new
		parent: parent;
		pharoNode: pharoNode;
		addOperand: condition;
		addOperand: then;
		addOperand: else;
		yourself.
	
	self becomeForward: asTernary
]
