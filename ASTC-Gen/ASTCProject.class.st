Class {
	#name : #ASTCProject,
	#superclass : #ASTCNode,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCProject >> compilationUnits [
	^ compilationUnits
]

{ #category : #accessors }
ASTCProject >> compilationUnits: aCompilationUnits [
	aCompilationUnits parent: self.
	^ compilationUnits := aCompilationUnits
]
