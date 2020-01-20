Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'definitions',
		'declarations'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCCompilationUnit >> = aCompilationUnit [
	super = aCompilationUnit
		ifFalse: [ ^ false ].
	definitions = aCompilationUnit definitions
		ifFalse: [ ^ false ].
	declarations = aCompilationUnit declarations
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
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
	declarations := OrderedCollection new
]

{ #category : #testing }
ASTCCompilationUnit >> isCompilationUnit [
	^ true
]
