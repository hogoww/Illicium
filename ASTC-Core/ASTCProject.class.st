Class {
	#name : #ASTCProject,
	#superclass : #ASTCNode,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCProject >> = aProject [
	super = aProject
		ifFalse: [ ^ false ].
	compilationUnits = aProject compilationUnits
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCProject >> acceptVisitor: aVisitor [
	aVisitor visitProject: self
]

{ #category : #accessing }
ASTCProject >> addCompilationUnit: aCompilationUnit [
	aCompilationUnit parent: self.
	compilationUnits add: aCompilationUnit
]

{ #category : #accessing }
ASTCProject >> compilationUnits [
	^ compilationUnits
]

{ #category : #accessing }
ASTCProject >> compilationUnits: someCompilationUnits [
	someCompilationUnits do: [ :each | each parent: self ].
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
