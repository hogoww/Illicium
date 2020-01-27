Class {
	#name : #ASTCPreprocessorIf,
	#superclass : #ASTCExpression,
	#instVars : [
		'condition',
		'then',
		'else'
	],
	#category : #'ASTC-Core-Nodes'
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
ASTCPreprocessorIf >> addElse: anElse [
  anElse parent: self.
  else add: anElse
]

{ #category : #accessing }
ASTCPreprocessorIf >> addThen: aThen [
  aThen parent: self.
  then add: aThen
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
ASTCPreprocessorIf >> else: someNodes [
  someNodes do: [:each |  each parent: self ].
  else := someNodes
]

{ #category : #accessing }
ASTCPreprocessorIf >> initialize [
  then := OrderedCollection new.
  else := OrderedCollection new
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
ASTCPreprocessorIf >> then: someNodes [
  someNodes do: [:each |  each parent: self ].
  then := someNodes
]
