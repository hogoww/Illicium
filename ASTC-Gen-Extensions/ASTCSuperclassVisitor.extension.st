Extension { #name : #ASTCSuperclassVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCSuperclassVisitor >> visitNode: aNode [
	self error: 'if you visit till node, you probably forgot to add code somewhere.'
]
