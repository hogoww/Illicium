Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> add: aNode [
	"convinience method for when adding both definition and declaration, from a definition"
	aNode isCompilationUnit ifTrue:[ ^ self addCompilationUnit: aNode ].
	aNode isDefinition ifTrue:[ ^ self addDefinitionAndDeclaration: aNode ].
	aNode isDeclaration ifTrue:[ ^ self addDeclaration: aNode  ].
	
	"type error"
	self error: 'I don''t know how to add other kind of elements to myself' .
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addCompilationUnit: aCompilationUnit [
	aCompilationUnit definitions do: [ :aDefinition | self addDefinition: aDefinition ].
	aCompilationUnit declarations do: [ :aDeclaration | self addDeclaration: aDeclaration ].
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addDefinitionAndDeclaration: aDefinition [
	"convinience method for when adding both definition and declaration, from a definition"
	self addDefinition: aDefinition.
	self addDeclaration: aDefinition declaration.
]
