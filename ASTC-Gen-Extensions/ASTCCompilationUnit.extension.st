Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCCompilationUnit >> add: aDefinition [
	"convinience method for when adding both definition and declaration, from a definition"
	self addDefinition: aDefinition.
	self addDeclaration: aDefinition declaration.
]
