Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'includes',
		'preamble',
		'defines',
		'structTypes',
		'definitions',
		'variableDeclarations',
		'functionDeclarations'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCCompilationUnit >> = aCompilationUnit [
	super = aCompilationUnit
		ifFalse: [ ^ false ].
	includes = aCompilationUnit includes
		ifFalse: [ ^ false ].
	preamble = aCompilationUnit preamble
		ifFalse: [ ^ false ].
	defines = aCompilationUnit defines
		ifFalse: [ ^ false ].
	structTypes = aCompilationUnit structTypes
		ifFalse: [ ^ false ].
	definitions = aCompilationUnit definitions
		ifFalse: [ ^ false ].
	variableDeclarations = aCompilationUnit variableDeclarations
		ifFalse: [ ^ false ].
	functionDeclarations = aCompilationUnit functionDeclarations
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	^ aVisitor visitCompilationUnit: self
]

{ #category : #accessing }
ASTCCompilationUnit >> addDefine: aDefine [
	aDefine parent: self.
	defines add: aDefine.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> addDefinition: aDefinition [
	aDefinition parent: self.
	definitions add: aDefinition.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> addFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration parent: self.
	functionDeclarations add: aFunctionDeclaration.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> addInclude: anInclude [
	anInclude parent: self.
	includes add: anInclude.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> addStructType: aStructType [
	aStructType parent: self.
	structTypes add: aStructType.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> addVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration parent: self.
	variableDeclarations add: aVariableDeclaration.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> defines [
	^ defines
]

{ #category : #accessing }
ASTCCompilationUnit >> defines: somePreprocessorDefines [
	somePreprocessorDefines do: [ :each | each parent: self ].
	defines := somePreprocessorDefines
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions: someDefinitions [
	someDefinitions do: [ :each | each parent: self ].
	definitions := someDefinitions
]

{ #category : #accessing }
ASTCCompilationUnit >> functionDeclarations [
	^ functionDeclarations
]

{ #category : #accessing }
ASTCCompilationUnit >> functionDeclarations: someFunctionDeclarations [
	someFunctionDeclarations do: [ :each | each parent: self ].
	functionDeclarations := someFunctionDeclarations
]

{ #category : #accessing }
ASTCCompilationUnit >> includes [
	^ includes
]

{ #category : #accessing }
ASTCCompilationUnit >> includes: somePreprocessorIncludes [
	somePreprocessorIncludes do: [ :each | each parent: self ].
	includes := somePreprocessorIncludes
]

{ #category : #accessing }
ASTCCompilationUnit >> initialize [
	includes := OrderedCollection new.
	defines := OrderedCollection new.
	structTypes := OrderedCollection new.
	definitions := OrderedCollection new.
	variableDeclarations := OrderedCollection new.
	functionDeclarations := OrderedCollection new
]

{ #category : #testing }
ASTCCompilationUnit >> isCompilationUnit [
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> preamble [
	^ preamble
]

{ #category : #accessing }
ASTCCompilationUnit >> preamble: aPreamble [
	aPreamble ifNotNil: [ aPreamble parent: self ].
	preamble := aPreamble
]

{ #category : #accessing }
ASTCCompilationUnit >> structTypes [
	^ structTypes
]

{ #category : #accessing }
ASTCCompilationUnit >> structTypes: someStructureDefinitions [
	someStructureDefinitions do: [ :each | each parent: self ].
	structTypes := someStructureDefinitions
]

{ #category : #accessing }
ASTCCompilationUnit >> variableDeclarations [
	^ variableDeclarations
]

{ #category : #accessing }
ASTCCompilationUnit >> variableDeclarations: someVariableDeclarations [
	someVariableDeclarations do: [ :each | each parent: self ].
	variableDeclarations := someVariableDeclarations
]
