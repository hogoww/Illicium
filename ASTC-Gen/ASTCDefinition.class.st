Class {
	#name : #ASTCDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'declaration'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self declaration = anotherNode declaration
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCDefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCDefinition:self.].
]

{ #category : #visiting }
ASTCDefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCDefinition:self.
]

{ #category : #accessors }
ASTCDefinition >> declaration [
	^declaration
]

{ #category : #accessors }
ASTCDefinition >> declaration: anObject [
	declaration:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self declaration hash.
	^hash
]

{ #category : #testing }
ASTCDefinition >> isASTCDefinition [
	^true.
]

{ #category : #print }
ASTCDefinition >> printProperties [
	^''
]
