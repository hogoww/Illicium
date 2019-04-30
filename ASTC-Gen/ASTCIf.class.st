Class {
	#name : #ASTCIf,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'then',
		'else'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCIf >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	self condition = anotherNode condition
		ifFalse: [ ^ false ].

	self then = anotherNode then
		ifFalse: [ ^ false ].

	self else = anotherNode else
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCIf >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCIf:self.].
]

{ #category : #visiting }
ASTCIf >> acceptVisitor: aVisitor [
	^aVisitor visitASTCIf:self.
]

{ #category : #accessors }
ASTCIf >> condition [
	^condition
]

{ #category : #accessors }
ASTCIf >> condition: anObject [
	condition:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #accessors }
ASTCIf >> else [
	^else
]

{ #category : #accessors }
ASTCIf >> else: anObject [
	else:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #comparing }
ASTCIf >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self condition hash.
	hash := hash + self then hash.
	hash := hash + self else hash.
	^hash
]

{ #category : #testing }
ASTCIf >> isASTCIf [
	^true.
]

{ #category : #print }
ASTCIf >> printProperties [
	^''
]

{ #category : #accessors }
ASTCIf >> then [
	^then
]

{ #category : #accessors }
ASTCIf >> then: anObject [
	then:=anObject.
	anObject parent:self.
	^anObject.
]
