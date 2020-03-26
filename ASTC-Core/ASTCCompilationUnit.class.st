Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'definitions',
		'declarations',
		'preprocessorMacro'
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
	preprocessorMacro = aCompilationUnit preprocessorMacro
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCCompilationUnit >> acceptVisitor: aVisitor [
	aVisitor visitCompilationUnit: self
]

{ #category : #accessing }
ASTCCompilationUnit >> addDeclaration: aDeclaration [
	aDeclaration parent: self.
	declarations add: aDeclaration
]

{ #category : #accessing }
ASTCCompilationUnit >> addDefinition: aDefinition [
	aDefinition parent: self.
	definitions add: aDefinition
]

{ #category : #accessing }
ASTCCompilationUnit >> addPreprocessorMacro: aPreprocessorMacro [
	aPreprocessorMacro parent: self.
	preprocessorMacro add: aPreprocessorMacro
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
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions: someDefinitions [
	someDefinitions do: [ :each | each parent: self ].
	definitions := someDefinitions
]

{ #category : #accessing }
ASTCCompilationUnit >> initialize [
	definitions := OrderedCollection new.
	declarations := OrderedCollection new.
	preprocessorMacro := OrderedCollection new
]

{ #category : #testing }
ASTCCompilationUnit >> isCompilationUnit [
	^ true
]

{ #category : #accessing }
ASTCCompilationUnit >> preprocessorMacro [
	^ preprocessorMacro
]

{ #category : #accessing }
ASTCCompilationUnit >> preprocessorMacro: somePreprocessorDefines [
	somePreprocessorDefines do: [ :each | each parent: self ].
	preprocessorMacro := somePreprocessorDefines
]
