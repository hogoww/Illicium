Class {
	#name : #ASTCWhile,
	#superclass : #ASTCAbstractWhile,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCWhile >> = aWhile [
  super = aWhile ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCWhile >> acceptVisitor: aVisitor [
  aVisitor visitWhile: self
]

{ #category : #testing }
ASTCWhile >> isWhile [
  ^true
]
