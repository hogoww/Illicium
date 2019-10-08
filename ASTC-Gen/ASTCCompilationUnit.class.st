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
ASTCCompilationUnit >> declarations: declarations [
	declarations parent: self.
	declarations := declarations
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions [
	^ definitions
]

{ #category : #accessing }
ASTCCompilationUnit >> definitions: definitions [
	definitions parent: self.
	definitions := definitions
]
