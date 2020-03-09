Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements',
		'declarations'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCBlock >> = aBlock [
	super = aBlock
		ifFalse: [ ^ false ].
	statements = aBlock statements
		ifFalse: [ ^ false ].
	declarations = aBlock declarations
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCBlock >> acceptVisitor: aVisitor [
	aVisitor visitBlock: self
]

{ #category : #accessing }
ASTCBlock >> addDeclaration: aDeclaration [
	aDeclaration parent: self.
	declarations add: aDeclaration
]

{ #category : #accessing }
ASTCBlock >> declarations [
	^ declarations
]

{ #category : #accessing }
ASTCBlock >> declarations: someDeclarationStatements [
	someDeclarationStatements do: [ :each | each parent: self ].
	declarations := someDeclarationStatements
]

{ #category : #accessing }
ASTCBlock >> initialize [
	statements := OrderedCollection new.
	declarations := OrderedCollection new
]

{ #category : #testing }
ASTCBlock >> isBlock [
	^ true
]

{ #category : #accessing }
ASTCBlock >> statements [
	^ statements
]

{ #category : #accessing }
ASTCBlock >> statements: someStatements [
	someStatements do: [ :each | each parent: self ].
	statements := someStatements
]
