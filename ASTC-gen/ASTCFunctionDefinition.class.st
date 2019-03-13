Class {
	#name : #ASTCFunctionDefinition,
	#superclass : #ASTCNode,
	#instVars : [
		'id',
		'type',
		'declarations',
		'body'
	],
	#category : #'ASTC-gen'
}

{ #category : #comparing }
ASTCFunctionDefinition >> = anotherNode [
	(anotherNode isKindOf: self class)
	ifFalse: [ ^ false ].

	self declarations = anotherNode declarations
		ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCFunctionDefinition >> acceptVisitor: aVisitor [
	aVisitor visitASTCFunctionDefinition:self.
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

{ #category : #accessors }
ASTCFunctionDefinition >> declarations [
	^declarations
]

{ #category : #accessors }
ASTCFunctionDefinition >> declarations: aCollection [
	declarations:=aCollection.
	self declarations do:[:each| each parent:self].
			^aCollection.
]

{ #category : #comparing }
ASTCFunctionDefinition >> hash [
	| hash |
	hash := self identityHash.
	hash := hash + self declarations.
	^ hash
]

{ #category : #accessors }
ASTCFunctionDefinition >> id [
	^id
]

{ #category : #accessors }
ASTCFunctionDefinition >> id: anObject [
	id:=anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #initialize }
ASTCFunctionDefinition >> initialize [
	super initialize.
	self initializeDeclarations.
]

{ #category : #initialize }
ASTCFunctionDefinition >> initializeDeclarations [
	declarations:=ASTCContainer new parent:self; yourself.
]

{ #category : #testing }
ASTCFunctionDefinition >> isASTCFunctionDefinition [
	^true.
]

{ #category : #print }
ASTCFunctionDefinition >> printProperties [
	^''
]

{ #category : #accessors }
ASTCFunctionDefinition >> type [
	^type
]

{ #category : #accessors }
ASTCFunctionDefinition >> type: anObject [
	type:=anObject.
	anObject parent:self.
	^anObject.
]
