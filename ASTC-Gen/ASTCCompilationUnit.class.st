Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'definitions',
		'declarations'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCCompilationUnit >> declarations [
	^ declarations
]

{ #category : #accessors }
ASTCCompilationUnit >> declarations: aDeclarations [
	aDeclarations parent: self.
	^ declarations := aDeclarations
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions: aDefinitions [
	aDefinitions parent: self.
	^ definitions := aDefinitions
]
