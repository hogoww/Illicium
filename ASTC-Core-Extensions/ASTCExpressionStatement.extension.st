Extension { #name : #ASTCExpressionStatement }

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpressionStatement >> asStatement [
	^ self
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpressionStatement >> becomeExpression [
	"protocol = converting"
	expression := self expression.
	expression 
		parent: parent;
		pharoNode: pharoNode.
	self becomeForward: expression
		
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpressionStatement class >> expression: anExpression [

	^ self new
		expression: anExpression;
		yourself
]
