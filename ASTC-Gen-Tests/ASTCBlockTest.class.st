Class {
	#name : #ASTCBlockTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCBlockTest >> testAdd [
	| block |
	block := ASTCBlock new.
	block addStatement: ASTCEmptyStatment new.
	
	self assert: block statements size equals: 0.
	
	block addStatement: ASTCStatement new.
	self assert: block statements size equals: 1.
]
