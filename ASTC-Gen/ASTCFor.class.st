Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#instVars : [
		'iteratorDefinition',
		'iteratorModification'
	],
	#category : #'ASTC-Gen-Nodes'
}

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
