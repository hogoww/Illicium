Extension { #name : #ASTCOperator }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCOperator >> addOperand: anOperand [
	operands add: anOperand.
	^ anOperand
]
