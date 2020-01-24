Class {
	#name : #ASTCRawCCode,
	#superclass : #ASTCExpression,
	#instVars : [
		'cCode'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCRawCCode >> = aRawCCode [
  super = aRawCCode ifFalse: [ ^false ].
  cCode = aRawCCode cCode ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCRawCCode >> acceptVisitor: aVisitor [
  aVisitor visitRawCCode: self
]

{ #category : #accessing }
ASTCRawCCode >> cCode [
  ^cCode
]

{ #category : #accessing }
ASTCRawCCode >> cCode: aCCode [
  cCode := aCCode
]

{ #category : #testing }
ASTCRawCCode >> isRawCCode [
  ^true
]
