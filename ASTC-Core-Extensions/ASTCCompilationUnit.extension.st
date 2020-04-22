Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addCompilationUnit: aCompilationUnit [
	aCompilationUnit definitions do: [ :aDefinition | self addDefinition: aDefinition ].
	aCompilationUnit declarations do: [ :aDeclaration | self addDeclaration: aDeclaration ].
	aCompilationUnit preprocessorMacro do: [ :aPreprocessorMacro | self addPreprocessorMacro: aPreprocessorMacro ].
	^ true
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addFunctionDefinition: aFunctionDefinition [
	"convinience method for when adding both definition and declaration, from a definition"
	self addDefinition: aFunctionDefinition.
	self addDeclaration: aFunctionDefinition declaration.
	^ true
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> functionNamed: aFunctionName [
	| function |
	function := self definitions detect: [ :aDefinition |
		aDefinition isFunctionDefinition and: [ aDefinition declaration id id = aFunctionName ] ].
	^ function
]
