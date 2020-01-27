Extension { #name : #ASTCDefinition }

{ #category : #'*ASTC-Core-Extensions' }
ASTCDefinition >> addToCompilationUnit: aCompilationUnit [ 
	aCompilationUnit addDefinition: self.
	declaration ifNotNil: [ aCompilationUnit addDeclaration: declaration ]
]
