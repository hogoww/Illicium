Class {
	#name : #ASTCVariableDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'init'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCVariableDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self init = anotherNode init
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCVariableDefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCVariableDefinition:self.].
]

{ #category : #visiting }
ASTCVariableDefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCVariableDefinition:self.
]

{ #category : #comparing }
ASTCVariableDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self init hash.
	^hash
]

{ #category : #accessors }
ASTCVariableDefinition >> init [
	^init
]

{ #category : #accessors }
ASTCVariableDefinition >> init: anObject [
	init:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #testing }
ASTCVariableDefinition >> isASTCVariableDefinition [
	^true.
]

{ #category : #print }
ASTCVariableDefinition >> printProperties [
	^''
]
