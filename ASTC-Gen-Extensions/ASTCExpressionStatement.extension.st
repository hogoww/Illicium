Extension { #name : #ASTCExpressionStatement }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpressionStatement >> asASTCStatement [
	^ self
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpressionStatement class >> expression: anExpression [

	^ self new
		expression: anExpression;
		yourself
]