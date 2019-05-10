Class {
	#name : #ASTCReturn,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCReturn >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self expression = anotherNode expression
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCReturn >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCReturn:self.].
]

{ #category : #visiting }
ASTCReturn >> acceptVisitor: aVisitor [
	^aVisitor visitASTCReturn:self.
]

{ #category : #accessors }
ASTCReturn >> expression [
	^expression
]

{ #category : #accessors }
ASTCReturn >> expression: anObject [
	expression:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCReturn >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self expression hash.
	^hash
]

{ #category : #testing }
ASTCReturn >> isASTCReturn [
	^true.
]

{ #category : #print }
ASTCReturn >> printProperties [
	^''
]
