Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#instVars : [
		'iteratorDefinition',
		'iteratorModification'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCFor >> iteratorDefinition [
	^ iteratorDefinition
]

{ #category : #accessors }
ASTCFor >> iteratorDefinition: anIteratorDefinition [
	anIteratorDefinition parent: self.
	^ iteratorDefinition := anIteratorDefinition
]

{ #category : #accessors }
ASTCFor >> iteratorModification [
	^ iteratorModification
]

{ #category : #accessors }
ASTCFor >> iteratorModification: anIteratorModification [
	anIteratorModification parent: self.
	^ iteratorModification := anIteratorModification
]
