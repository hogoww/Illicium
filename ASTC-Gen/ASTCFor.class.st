Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#instVars : [
		'iteratorDefinition',
		'iteratorModification'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCFor >> = aFor [
	super = aFor
		ifFalse: [ ^ false ].
	iteratorDefinition = aFor iteratorDefinition
		ifFalse: [ ^ false ].
	iteratorModification = aFor iteratorModification
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCFor >> acceptVisitor: aVisitor [
	aVisitor visitFor: self
]

{ #category : #testing }
ASTCFor >> isFor [
	^ true
]

{ #category : #accessing }
ASTCFor >> iteratorDefinition [
	^ iteratorDefinition
]

{ #category : #accessing }
ASTCFor >> iteratorDefinition: anIteratorDefinition [
	anIteratorDefinition parent: self.
	iteratorDefinition := anIteratorDefinition
]

{ #category : #accessing }
ASTCFor >> iteratorModification [
	^ iteratorModification
]

{ #category : #accessing }
ASTCFor >> iteratorModification: anIteratorModification [
	anIteratorModification parent: self.
	iteratorModification := anIteratorModification
]
