Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #comparing }
ASTCNode >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCNode >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCNode:self.].
]

{ #category : #visiting }
ASTCNode >> acceptVisitor: aVisitor [
	^aVisitor visitASTCNode:self.
]

{ #category : #comparing }
ASTCNode >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #testing }
ASTCNode >> isASTCAbstractWhile [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCBlock [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCCompilationUnit [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCDeclaration [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCDeclarationStatement [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCDefinition [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCDoWhile [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCExpression [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCExpressionStatement [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCFor [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCFunctionCall [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCFunctionDeclaration [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCFunctionDefinition [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCIdentifier [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCIf [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCLiteral [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCLoop [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCNode [
	^true
]

{ #category : #testing }
ASTCNode >> isASTCOperator [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCProject [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCReturn [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCStatement [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCType [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCVariableDeclaration [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCVariableDefinition [
	^false
]

{ #category : #testing }
ASTCNode >> isASTCWhile [
	^false
]

{ #category : #accessors }
ASTCNode >> parent [
	^parent
]

{ #category : #accessors }
ASTCNode >> parent: anObject [
	parent:=anObject.
	^anObject.
]

{ #category : #print }
ASTCNode >> printProperties [
	^ ''
]
