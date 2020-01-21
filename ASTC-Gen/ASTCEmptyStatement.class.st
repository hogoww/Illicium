Class {
	#name : #ASTCEmptyStatement,
	#superclass : #ASTCStatement,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCEmptyStatement >> = anEmptyStatement [
	super = anEmptyStatement
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCEmptyStatement >> acceptVisitor: aVisitor [
	aVisitor visitEmptyStatement: self
]

{ #category : #testing }
ASTCEmptyStatement >> isEmptyStatement [
	^ true
]
