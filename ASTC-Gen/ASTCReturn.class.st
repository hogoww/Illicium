Class {
	#name : #ASTCReturn,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCReturn >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCReturn >> acceptVisitor: aVisitor [
	aVisitor visitASTCReturn:self.
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

	^ hash
]

{ #category : #testing }
ASTCReturn >> isASTCReturn [
	^true.
]

{ #category : #print }
ASTCReturn >> printProperties [
	^''
]
