Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'body'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCFunctionDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self body = anotherNode body
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFunctionDefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCFunctionDefinition:self.].
]

{ #category : #visiting }
ASTCFunctionDefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCFunctionDefinition:self.
]

{ #category : #accessors }
ASTCFunctionDefinition >> body [
	^body
]

{ #category : #accessors }
ASTCFunctionDefinition >> body: anObject [
	body:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCFunctionDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self body hash.
	^hash
]

{ #category : #testing }
ASTCFunctionDefinition >> isASTCFunctionDefinition [
	^true.
]

{ #category : #print }
ASTCFunctionDefinition >> printProperties [
	^''
]
