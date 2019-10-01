Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCNode >> parent [
	^ parent
]

{ #category : #accessors }
ASTCNode >> parent: aParent [
	aParent parent: self.
	^ parent := aParent
]
