Extension { #name : #ASTCWalkerVisitor }

{ #category : #'*ASTC-Visitors' }
ASTCWalkerVisitor >> walkASTCNodeParent:anASTCNode [
	self flag:#badFix."avoid infinite recursivity when using the walker."
	^self.
]
