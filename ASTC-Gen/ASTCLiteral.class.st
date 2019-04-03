Class {
	#name : #ASTCLiteral,
	#superclass : #ASTCExpression,
	#instVars : [
		'value'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCLiteral >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self value = anotherNode value
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCLiteral >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCLiteral:self.].
]

{ #category : #visiting }
ASTCLiteral >> acceptVisitor: aVisitor [
	^aVisitor visitASTCLiteral:self.
]

{ #category : #comparing }
ASTCLiteral >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self value hash.
	^hash
]

{ #category : #testing }
ASTCLiteral >> isASTCLiteral [
	^true.
]

{ #category : #print }
ASTCLiteral >> printProperties [
	^String streamContents:[:s |
	s << ' ' << self valueAsString.].
]

{ #category : #accessors }
ASTCLiteral >> value [
	^value
]

{ #category : #accessors }
ASTCLiteral >> value: anObject [
	value:=anObject.
	^anObject.
]

{ #category : #printing }
ASTCLiteral >> valueAsString [
	^value asString.
]
