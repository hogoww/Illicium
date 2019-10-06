Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessing }
ASTCBlock >> addStatement: aStatement [
	statements add: aStatement
]

{ #category : #accessing }
ASTCBlock >> statements [
	^ statements
]

{ #category : #accessing }
ASTCBlock >> statements: aCollectionOfStatements [
	aCollectionOfStatements parent: self.
	statements := aCollectionOfStatements
]
