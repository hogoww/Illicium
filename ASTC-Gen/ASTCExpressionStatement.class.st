Class {
	#name : #ASTCExpressionStatement,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #'instance creation' }
ASTCExpressionStatement class >> expression: anExpression [

	^ self new
		expression: anExpression;
		yourself
]

{ #category : #comparing }
ASTCExpressionStatement >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self expression = anotherNode expression
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCExpressionStatement >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCExpressionStatement:self.].
]

{ #category : #visiting }
ASTCExpressionStatement >> acceptVisitor: aVisitor [
	^aVisitor visitASTCExpressionStatement:self.
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
	hash := hash + self expression hash.
	^hash
]

{ #category : #testing }
ASTCExpressionStatement >> isASTCExpressionStatement [
	^true.
]

{ #category : #print }
ASTCExpressionStatement >> printProperties [
	^''
]
