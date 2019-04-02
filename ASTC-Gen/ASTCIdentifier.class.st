Class {
	#name : #ASTCIdentifier,
	#superclass : #ASTCExpression,
	#instVars : [
		'id'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCIdentifier >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self id = anotherNode id
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCIdentifier >> acceptMultipleVisitor: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCIdentifier:self.].
]

{ #category : #visiting }
ASTCIdentifier >> acceptVisitor: aVisitor [
	^aVisitor visitASTCIdentifier:self.
]

{ #category : #comparing }
ASTCIdentifier >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self id hash.
	^hash
]

{ #category : #accessors }
ASTCIdentifier >> id [
	^id
]

{ #category : #accessors }
ASTCIdentifier >> id: anObject [
	id:=anObject.
	^anObject.
]

{ #category : #printing }
ASTCIdentifier >> idAsString [
	^id asString.
]

{ #category : #testing }
ASTCIdentifier >> isASTCIdentifier [
	^true.
]

{ #category : #print }
ASTCIdentifier >> printProperties [
	^String streamContents:[:s |
	s << ' ' << self idAsString.].
]
