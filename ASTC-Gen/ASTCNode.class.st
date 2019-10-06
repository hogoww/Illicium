Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCNode >> parent [
	^ parent
]

{ #category : #accessing }
ASTCNode >> parent: aParent [
	aParent parent: self.
	parent := aParent
]
