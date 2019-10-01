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
ASTCCompilationUnit >> declarations: aCollectionOfDeclarations [
	aCollectionOfDeclarations parent: self.
	^ declarations := aCollectionOfDeclarations
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessors }
ASTCCompilationUnit >> definitions: aCollectionOfDefinitions [
	aCollectionOfDefinitions parent: self.
	^ definitions := aCollectionOfDefinitions
]
