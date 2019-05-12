Class {
	#name : #ASTCStructureDefinition,
	#superclass : #ASTCDefinition,
	#instVars : [
		'declaration',
		'members'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCStructureDefinition >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self declaration = anotherNode declaration
		ifFalse: [ ^ false ].

	self members = anotherNode members
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCStructureDefinition >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCStructureDefinition:self.].
]

{ #category : #visiting }
ASTCStructureDefinition >> acceptVisitor: aVisitor [
	^aVisitor visitASTCStructureDefinition:self.
]

{ #category : #accessors }
ASTCStructureDefinition >> declaration [
	^declaration
]

{ #category : #accessors }
ASTCStructureDefinition >> declaration: anObject [
	declaration:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCStructureDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self declaration hash.
	hash := hash + self members hash.
	^hash
]

{ #category : #initialize }
ASTCStructureDefinition >> initialize [
	super initialize.
	self initializeMembers.
]

{ #category : #initialization }
ASTCStructureDefinition >> initializeMembers [
	members:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCStructureDefinition >> isASTCStructureDefinition [
	^true.
]

{ #category : #accessors }
ASTCStructureDefinition >> members [
	^members
]

{ #category : #accessors }
ASTCStructureDefinition >> members: aCollection [
	members:=aCollection.
	aCollection parent:self.
	^aCollection.
]

{ #category : #print }
ASTCStructureDefinition >> printProperties [
	^''
]
