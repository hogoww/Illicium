Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#instVars : [
		'iteratorDeclaration',
		'iteratorModification'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCFor >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self iteratorDeclaration = anotherNode iteratorDeclaration
		ifFalse: [ ^ false ].

	self iteratorModification = anotherNode iteratorModification
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFor >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCFor:self.].
]

{ #category : #visiting }
ASTCFor >> acceptVisitor: aVisitor [
	^aVisitor visitASTCFor:self.
]

{ #category : #comparing }
ASTCFor >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self iteratorDeclaration hash.
	hash := hash + self iteratorModification hash.
	^hash
]

{ #category : #testing }
ASTCFor >> isASTCFor [
	^true.
]

{ #category : #accessors }
ASTCFor >> iteratorDeclaration [
	^iteratorDeclaration
]

{ #category : #accessors }
ASTCFor >> iteratorDeclaration: anObject [
	iteratorDeclaration:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #accessors }
ASTCFor >> iteratorModification [
	^iteratorModification
]

{ #category : #accessors }
ASTCFor >> iteratorModification: anObject [
	iteratorModification:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #print }
ASTCFor >> printProperties [
	^''
]
