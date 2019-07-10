Class {
	#name : #ASTCFor,
	#superclass : #ASTCLoop,
	#instVars : [
		'iteratorDefinition',
		'iteratorModification'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCFor >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self iteratorDefinition = anotherNode iteratorDefinition
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
	hash := hash + self iteratorDefinition hash.
	hash := hash + self iteratorModification hash.
	^hash
]

{ #category : #testing }
ASTCFor >> isASTCFor [
	^true.
]

{ #category : #accessors }
ASTCFor >> iteratorDefinition [
	^iteratorDefinition
]

{ #category : #accessors }
ASTCFor >> iteratorDefinition: anObject [
	iteratorDefinition:=anObject.
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
