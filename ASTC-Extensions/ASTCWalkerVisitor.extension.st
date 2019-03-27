Extension { #name : #ASTCWalkerVisitor }

{ #category : #'*ASTC-Extensions' }
ASTCWalkerVisitor >> walkASTCNodeParent:anASTCNode [
	self flag:#badFix."avoid infinite recursivity when using the walker."
	^self.
]
