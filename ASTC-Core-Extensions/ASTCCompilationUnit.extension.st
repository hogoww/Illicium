Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addCompilationUnit: aCompilationUnit [
	aCompilationUnit definitions do: [ :aDefinition | self addDefinition: aDefinition ].
	aCompilationUnit declarations do: [ :aDeclaration | self addDeclaration: aDeclaration ].
	aCompilationUnit includes do: [ :anInclude | self addPreprocessorInclude: anInclude ].
	aCompilationUnit defines do: [ :aDefine | self addPreprocessorDefine: aDefine ].
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
ASTCCompilationUnit >> addPreprocessorDefine: aPreProcessorDefine [
	"shortcut, that is working with generated code"
	^ self addDefine: aPreProcessorDefine
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addPreprocessorInclude: aPreProcessorInclude [
	"shortcut, that is working with generated code"
	^ self addInclude: aPreProcessorInclude
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> functionNamed: aFunctionName [
	| function |
	function := self definitions detect: [ :aDefinition |
		aDefinition isFunctionDefinition and: [ aDefinition declaration id id = aFunctionName ] ].
	^ function
]
