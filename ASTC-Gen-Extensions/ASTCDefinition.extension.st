Extension { #name : #ASTCDefinition }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDefinition >> addToCompilationUnit: aCompilationUnit [ 
	aCompilationUnit addDefinition: self.
	declaration ifNotNil: [ aCompilationUnit addDeclaration: declaration ]
]
