Class {
	#name : #ASTCProject,
	#superclass : #ASTCNode,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCProject >> addCompilationUnit: aCompilationUnit [
	compilationUnits add: aCompilationUnit
]

{ #category : #accessors }
ASTCProject >> compilationUnits [
	^ compilationUnits
]

{ #category : #accessors }
ASTCProject >> compilationUnits: aCollectionOfCompilationUnits [
	aCollectionOfCompilationUnits parent: self.
	compilationUnits := aCollectionOfCompilationUnits
]
