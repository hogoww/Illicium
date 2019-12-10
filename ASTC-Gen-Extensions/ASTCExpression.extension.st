Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> asStatement [

	^ ASTCExpressionStatement expression: self
]
