Extension { #name : #ASTCCompilationUnit }

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> addCompilationUnit: aCompilationUnit [
	"Does not set the preamble, because I cannot decide here which should be kept if both are sets."
	aCompilationUnit structTypes do: [ :aStructType | self addStructType: aStructType ].
	aCompilationUnit definitions do: [ :aDefinition | self addDefinition: aDefinition ].
	aCompilationUnit variableDeclarations do: [ :aDeclaration | self addVariableDeclaration: aDeclaration ].
	aCompilationUnit includes do: [ :anInclude | self addPreprocessorInclude: anInclude ].
	aCompilationUnit defines do: [ :aDefine | self addPreprocessorDefine: aDefine ].
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
ASTCCompilationUnit >> addStructureDefinition: aPreProcessorDefine [
	"shortcut, that is working with generated code"
	^ self addStructType: aPreProcessorDefine
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCCompilationUnit >> functionNamed: aFunctionName [
	| function |
	function := self definitions detect: [ :aDefinition |
		aDefinition isFunctionDefinition and: [ aDefinition declaration id id = aFunctionName ] ].
	^ function
]
