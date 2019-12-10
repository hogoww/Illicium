Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'pharoNode',
		'parent'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCNode >> = aNode [
	^ true
]

{ #category : #testing }
ASTCNode >> acceptVisitor: aVisitor [
	aVisitor visitNode: self
]

{ #category : #testing }
ASTCNode >> isAbstractWhile [
	^ false
]

{ #category : #testing }
ASTCNode >> isBlock [
	^ false
]

{ #category : #testing }
ASTCNode >> isCompilationUnit [
	^ false
]

{ #category : #testing }
ASTCNode >> isDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isDeclarationStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isDoWhile [
	^ false
]

{ #category : #testing }
ASTCNode >> isExpression [
	^ false
]

{ #category : #testing }
ASTCNode >> isExpressionStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isFor [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionCall [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isFunctionDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isIdentifier [
	^ false
]

{ #category : #testing }
ASTCNode >> isIf [
	^ false
]

{ #category : #testing }
ASTCNode >> isLiteral [
	^ false
]

{ #category : #testing }
ASTCNode >> isLoop [
	^ false
]

{ #category : #testing }
ASTCNode >> isNode [
	^ true
]

{ #category : #testing }
ASTCNode >> isOperator [
	^ false
]

{ #category : #testing }
ASTCNode >> isProject [
	^ false
]

{ #category : #testing }
ASTCNode >> isReturn [
	^ false
]

{ #category : #testing }
ASTCNode >> isStatement [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructureDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isStructureDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isType [
	^ false
]

{ #category : #testing }
ASTCNode >> isVariableDeclaration [
	^ false
]

{ #category : #testing }
ASTCNode >> isVariableDefinition [
	^ false
]

{ #category : #testing }
ASTCNode >> isWhile [
	^ false
]

{ #category : #accessing }
ASTCNode >> parent [
	^ parent
]

{ #category : #accessing }
ASTCNode >> pharoNode [
	^ pharoNode
]

{ #category : #accessing }
ASTCNode >> pharoNode: aPharoNode [
	pharoNode := aPharoNode
]

{ #category : #testing }
ASTCNode >> printOn: aStream [
	aStream print: self class;
		<< '(';
		<< self prettyPrint;
		<< ')'
]
