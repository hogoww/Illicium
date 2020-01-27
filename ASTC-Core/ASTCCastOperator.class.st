Class {
	#name : #ASTCCastOperator,
	#superclass : #ASTCUnaryOperator,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCCastOperator >> = aCastOperator [
  super = aCastOperator ifFalse: [ ^false ].
  type = aCastOperator type ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCCastOperator >> acceptVisitor: aVisitor [
  aVisitor visitCastOperator: self
]

{ #category : #testing }
ASTCCastOperator >> isCastOperator [
  ^true
]

{ #category : #accessing }
ASTCCastOperator >> type [
  ^type
]

{ #category : #accessing }
ASTCCastOperator >> type: aType [
  aType ifNotNil: [ aType parent: self ].
  type := aType
]
