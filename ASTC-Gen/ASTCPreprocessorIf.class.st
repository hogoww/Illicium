Class {
	#name : #ASTCPreprocessorIf,
	#superclass : #ASTCExpression,
	#instVars : [
		'condition',
		'then',
		'else'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCPreprocessorIf >> = aPreprocessorIf [
  super = aPreprocessorIf ifFalse: [ ^false ].
  condition = aPreprocessorIf condition ifFalse: [ ^false ].
  then = aPreprocessorIf then ifFalse: [ ^false ].
  else = aPreprocessorIf else ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCPreprocessorIf >> acceptVisitor: aVisitor [
  aVisitor visitPreprocessorIf: self
]

{ #category : #accessing }
ASTCPreprocessorIf >> condition [
  ^condition
]

{ #category : #accessing }
ASTCPreprocessorIf >> condition: aCondition [
  aCondition ifNotNil: [ aCondition parent: self ].
  condition := aCondition
]

{ #category : #accessing }
ASTCPreprocessorIf >> else [
  ^else
]

{ #category : #accessing }
ASTCPreprocessorIf >> else: anElse [
  anElse ifNotNil: [ anElse parent: self ].
  else := anElse
]

{ #category : #testing }
ASTCPreprocessorIf >> isPreprocessorIf [
  ^true
]

{ #category : #accessing }
ASTCPreprocessorIf >> then [
  ^then
]

{ #category : #accessing }
ASTCPreprocessorIf >> then: aThen [
  aThen ifNotNil: [ aThen parent: self ].
  then := aThen
]
