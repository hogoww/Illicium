Extension { #name : #ASTCWalkerVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCWalkerVisitor >> visitNode: aNode [
	super visitNode: aNode.
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCWalkerVisitor >> walkASTCNodeParent:anASTCNode [
	self flag:#badFix."avoid infinite recursivity when using the walker."
	^self.
]
