Extension { #name : #ASTCIf }

{ #category : #'*ASTC-Core-Extensions' }
ASTCIf >> becomeTernaryConditionalOperator [
	"protocol: converting"
	| asTernary |
	asTernary := ASTCTernaryConditionalOperator new
		addOperand: self condition ;
		addOperand: self then ;
		addOperand: self else ;
		yourself.
	
	self becomeForward: asTernary
]
