Extension { #name : #ASTCDeclaration }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDeclaration >> addToCompilationUnit: aCompilationUnit [ 
	aCompilationUnit addDeclaration: self
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDeclaration >> asStatement [
	^ ASTCDeclarationStatement new declaration: self; yourself
]
