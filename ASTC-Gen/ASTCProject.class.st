Class {
	#name : #ASTCProject,
	#superclass : #Object,
	#instVars : [
		'compilationUnits'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCProject >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self compilationUnits = anotherNode compilationUnits
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCProject >> acceptVisitor: aVisitor [
	^aVisitor visitASTCProject:self.
]

{ #category : #accessors }
ASTCProject >> compilationUnits [
	^compilationUnits
]

{ #category : #accessors }
ASTCProject >> compilationUnits: aCollection [
	compilationUnits:=aCollection.
	self compilationUnits do:[:each| each parent:self].
			^aCollection.
]

{ #category : #comparing }
ASTCProject >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self compilationUnits hash.
 hash
]

{ #category : #initialize }
ASTCProject >> initialize [
	super initialize.
	self initializeCompilationUnits.
]

{ #category : #initialize }
ASTCProject >> initializeCompilationUnits [
	compilationUnits:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCProject >> isASTCProject [
	^true.
]

{ #category : #print }
ASTCProject >> printProperties [
	^''
]