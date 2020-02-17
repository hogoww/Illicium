Class {
	#name : #ASTCBlockTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-shortcuts'
}

{ #category : #tests }
ASTCBlockTest >> testAdd [
	| block |
	block := ASTCBlock new.
	block addStatement: ASTCEmptyStatement new.
	
	self assert: block statements size equals: 0.
	
	block addStatement: ASTCStatement new.
	self assert: block statements size equals: 1.
	
	block addStatement: (ASTCBlock new addStatement: (ASTCRawDeclaration new rawDeclaration: 'int a';yourself)).
	self assert: block statements size equals: 2.
]
