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

	^ true
]

{ #category : #visiting }
ASTCIdentifier >> acceptVisitor: aVisitor [
	^aVisitor visitASTCIdentifier:self.
]

{ #category : #comparing }
ASTCIdentifier >> hash [
	| hash |
	hash := self identityHash.
 hash
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
