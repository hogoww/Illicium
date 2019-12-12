Extension { #name : #ASTCDeclaration }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDeclaration >> asStatement [
	^ ASTCDeclarationStatement new declaration: self; yourself
]
