Class {
	#name : #ASTCExpressionStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCExpressionStatement >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCExpressionStatement >> acceptVisitor: aVisitor [
	aVisitor visitASTCExpressionStatement:self.
]

{ #category : #accessors }
ASTCExpressionStatement >> expression [
	^expression
]

{ #category : #accessors }
ASTCExpressionStatement >> expression: anObject [
	expression:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCExpressionStatement >> hash [
	| hash |
	hash := self identityHash.
 hash
]

{ #category : #testing }
ASTCExpressionStatement >> isASTCExpressionStatement [
	^true.
]

{ #category : #print }
ASTCExpressionStatement >> printProperties [
	^''
]
