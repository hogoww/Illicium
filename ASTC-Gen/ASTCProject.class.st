Class {
	#name : #ASTCProject,
	#superclass : #ASTCNode,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCProject >> = aProject [
	super = aProject
		ifFalse: [ ^ false ].
	compilationUnits = aProject compilationUnits
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCProject >> acceptVisitor: aVisitor [
	aVisitor visitProject: self
]

{ #category : #accessing }
ASTCProject >> addCompilationUnit: aCompilationUnit [
	compilationUnits add: aCompilationUnit
]

{ #category : #accessing }
ASTCProject >> compilationUnits [
	^ compilationUnits
]

{ #category : #accessing }
ASTCProject >> compilationUnits: someCompilationUnits [
	compilationUnits := someCompilationUnits
]

{ #category : #accessing }
ASTCProject >> initialize [
	compilationUnits := OrderedCollection new
]

{ #category : #testing }
ASTCProject >> isProject [
	^ true
]
