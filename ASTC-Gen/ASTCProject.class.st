Class {
	#name : #ASTCProject,
	#superclass : #ASTCNode,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCProject >> addCompilationUnit: aCompilationUnit [
	compilationUnits add: aCompilationUnit
]

{ #category : #accessing }
ASTCProject >> compilationUnits [
	^ compilationUnits
]

{ #category : #accessing }
ASTCProject >> compilationUnits: aCollectionOfCompilationUnits [
	aCollectionOfCompilationUnits parent: self.
	compilationUnits := aCollectionOfCompilationUnits
]
