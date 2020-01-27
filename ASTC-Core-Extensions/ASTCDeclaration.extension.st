Extension { #name : #ASTCDeclaration }

{ #category : #'*ASTC-Core-Extensions' }
ASTCDeclaration >> addToCompilationUnit: aCompilationUnit [ 
	aCompilationUnit addDeclaration: self
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCDeclaration >> asStatement [
	^ ASTCDeclarationStatement new declaration: self; yourself
]
