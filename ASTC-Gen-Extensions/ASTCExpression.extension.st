Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> asASTCStatement [

	^ ASTCExpressionStatement expression: self
]
