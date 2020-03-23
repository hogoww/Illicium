Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> add: aDefinitionOrCompilationUnit [
	"convinience method for when adding both definition and declaration, from a definition"
	aDefinitionOrCompilationUnit isCompilationUnit
		ifTrue:[
			self addCompilationUnit: aDefinitionOrCompilationUnit
			]
		ifFalse:[
			self addDefinitionAndDeclaration: aDefinitionOrCompilationUnit
			].

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
