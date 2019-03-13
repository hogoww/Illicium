Class {
	#name : #ASTCType,
	#superclass : #ASTCNode,
	#instVars : [
		'type'
	],
	#category : #'ASTC-gen'
}

{ #category : #comparing }
ASTCType >> = anotherNode [
	(anotherNode isKindOf: self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCType >> acceptVisitor: aVisitor [
	aVisitor visitASTCType:self.
]

{ #category : #comparing }
ASTCType >> hash [
	| hash |
	hash := self identityHash.

	^ hash
]

{ #category : #testing }
ASTCType >> isASTCType [
	^true.
]

{ #category : #print }
ASTCType >> printProperties [
	^String streamContents:[:s |
	s << ' ' << self typeAsString.].
]

{ #category : #accessors }
ASTCType >> type [
	^type
]

{ #category : #accessors }
ASTCType >> type: anObject [
	type:=anObject.
	^anObject.
]

{ #category : #printing }
ASTCType >> typeAsString [
	^type asString.
]
