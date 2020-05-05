Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'definitions',
		'declarations',
		'includes',
		'defines'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCCompilationUnit >> = aCompilationUnit [
	super = aCompilationUnit
		ifFalse: [ ^ false ].
	definitions = aCompilationUnit definitions
		ifFalse: [ ^ false ].
	declarations = aCompilationUnit declarations
		ifFalse: [ ^ false ].
	includes = aCompilationUnit includes
		ifFalse: [ ^ false ].
	defines = aCompilationUnit defines
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	^ aVisitor visitCompilationUnit: self
]

{ #category : #accessing }
ASTCCompilationUnit >> addDeclaration: aDeclaration [
	aDeclaration parent: self.
	declarations add: aDeclaration.
	^ true
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
ASTCCompilationUnit >> addInclude: anInclude [
	anInclude parent: self.
	includes add: anInclude.
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> declarations [
	^ declarations
]

{ #category : #accessing }
ASTCCompilationUnit >> declarations: someDeclarations [
	someDeclarations do: [ :each | each parent: self ].
	declarations := someDeclarations
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
	definitions := OrderedCollection new.
	declarations := OrderedCollection new.
	includes := OrderedCollection new.
	defines := OrderedCollection new
]

{ #category : #testing }
ASTCCompilationUnit >> isCompilationUnit [
	^ true
]
