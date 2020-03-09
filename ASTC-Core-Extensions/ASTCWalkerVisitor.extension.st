Extension { #name : #ASTCWalkerVisitor }

{ #category : #'*ASTC-Core-Extensions' }
ASTCWalkerVisitor >> visitNode: anASTCNode [
	self flag: #badFix. "avoid bad infinite loop in walker"
	^self.
]
