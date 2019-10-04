Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCBlock >> addStatement: aStatement [
	statements add: aStatement
]

{ #category : #accessors }
ASTCBlock >> statements [
	^ statements
]

{ #category : #accessors }
ASTCBlock >> statements: aCollectionOfStatements [
	aCollectionOfStatements parent: self.
	statements := aCollectionOfStatements
]
