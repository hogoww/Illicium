Class {
	#name : #ASTCLoop,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'body'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCLoop >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self condition = anotherNode condition
		ifFalse: [ ^ false ].

	self body = anotherNode body
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCLoop >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCLoop:self.].
]

{ #category : #visiting }
ASTCLoop >> acceptVisitor: aVisitor [
	^aVisitor visitASTCLoop:self.
]

{ #category : #accessors }
ASTCLoop >> body [
	^body
]

{ #category : #accessors }
ASTCLoop >> body: anObject [
	body:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #accessors }
ASTCLoop >> condition [
	^condition
]

{ #category : #accessors }
ASTCLoop >> condition: anObject [
	condition:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCLoop >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self condition hash.
	hash := hash + self body hash.
	^hash
]

{ #category : #testing }
ASTCLoop >> isASTCLoop [
	^true.
]

{ #category : #print }
ASTCLoop >> printProperties [
	^''
]
