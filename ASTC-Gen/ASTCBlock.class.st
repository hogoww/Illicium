Class {
	#name : #ASTCBlock,
	#superclass : #ASTCStatement,
	#instVars : [
		'statements'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCBlock >> statements [
	^ statements
]

{ #category : #accessors }
ASTCBlock >> statements: aStatements [
	aStatements parent: self.
	^ statements := aStatements
]
