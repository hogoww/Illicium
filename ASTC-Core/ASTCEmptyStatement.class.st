Class {
	#name : #ASTCEmptyStatement,
	#superclass : #ASTCStatement,
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCEmptyStatement >> = anEmptyStatement [
	super = anEmptyStatement
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCEmptyStatement >> acceptVisitor: aVisitor [
	^ aVisitor visitEmptyStatement: self
]

{ #category : #testing }
ASTCEmptyStatement >> isEmptyStatement [
	^ true
]
