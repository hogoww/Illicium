Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCNode >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCNode >> acceptMultipleVisitor: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCNode:self.].
]

{ #category : #visiting }
ASTCNode >> acceptVisitor: aVisitor [
	^aVisitor visitASTCNode:self.
]

{ #category : #comparing }
ASTCNode >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCNode >> isASTCNode [
	^true.
]

{ #category : #accessors }
ASTCNode >> parent [
	^parent
]

{ #category : #accessors }
ASTCNode >> parent: anObject [
	parent:=anObject.
	^anObject.
]

{ #category : #print }
ASTCNode >> printProperties [
	^''
]
