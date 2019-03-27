Class {
	#name : #ASTCIf,
	#superclass : #ASTCStatement,
	#instVars : [
		'predicate',
		'then',
		'else'
	],
	#category : #'ASTC-Gen'
}

{ #category : #comparing }
ASTCIf >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCIf >> acceptVisitor: aVisitor [
	aVisitor visitASTCIf:self.
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
 hash
]

{ #category : #testing }
ASTCIf >> isASTCIf [
	^true.
]

{ #category : #accessors }
ASTCIf >> predicate [
	^predicate
]

{ #category : #accessors }
ASTCIf >> predicate: anObject [
	predicate:=anObject.
	anObject parent:self.
	^anObject.
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
