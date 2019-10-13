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
ASTCBlock >> initialize [
	statements := LinkedList new
]

{ #category : #accessing }
ASTCBlock >> statements [
	^ statements
]

{ #category : #accessing }
ASTCBlock >> statements: someStatements [
	someStatements parent: self.
	statements := someStatements
]
