Extension { #name : #ASTCWalkerVisitor }

{ #category : #'*ASTC-Core-Extensions' }
ASTCWalkerVisitor >> visitNode: aNode [
	super visitNode: aNode.
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCWalkerVisitor >> walkASTCNodeParent:anASTCNode [
	self flag:#badFix."avoid infinite recursivity when using the walker."
	^self.
]
