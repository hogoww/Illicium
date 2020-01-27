Extension { #name : #ASTCExpressionStatement }

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpressionStatement >> asStatement [
	^ self
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpressionStatement class >> expression: anExpression [

	^ self new
		expression: anExpression;
		yourself
]
