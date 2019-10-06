Class {
	#name : #ASTCCompilationUnit,
	#superclass : #ASTCNode,
	#instVars : [
		'definitions',
		'declarations'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCCompilationUnit >> addDeclaration: aDeclaration [
	declarations add: aDeclaration
]

{ #category : #accessing }
ASTCCompilationUnit >> addDefinition: aDefinition [
	definitions add: aDefinition
]

{ #category : #accessing }
ASTCCompilationUnit >> declarations [
	^ declarations
]

{ #category : #accessing }
ASTCCompilationUnit >> declarations: aCollectionOfDeclarations [
	aCollectionOfDeclarations parent: self.
	declarations := aCollectionOfDeclarations
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions: aCollectionOfDefinitions [
	aCollectionOfDefinitions parent: self.
	definitions := aCollectionOfDefinitions
]
