Class {
	#name : #ASTCTernaryConditionalOperator,
	#superclass : #ASTCOperator,
	#instVars : [
		'condition',
		'then',
		'else'
	],
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCTernaryConditionalOperator >> = aTernaryConditionalOperator [
	super = aTernaryConditionalOperator
		ifFalse: [ ^ false ].
	condition = aTernaryConditionalOperator condition
		ifFalse: [ ^ false ].
	then = aTernaryConditionalOperator then
		ifFalse: [ ^ false ].
	else = aTernaryConditionalOperator else
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCTernaryConditionalOperator >> acceptVisitor: aVisitor [
	aVisitor visitTernaryConditionalOperator: self
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> condition [
	^ condition
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> condition: aCondition [
	aCondition ifNotNil: [ aCondition parent: self ].
	condition := aCondition
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> else [
	^ else
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> else: anElse [
	anElse ifNotNil: [ anElse parent: self ].
	else := anElse
]

{ #category : #testing }
ASTCTernaryConditionalOperator >> isTernaryConditionalOperator [
	^ true
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> then [
	^ then
]

{ #category : #accessing }
ASTCTernaryConditionalOperator >> then: aThen [
	aThen ifNotNil: [ aThen parent: self ].
	then := aThen
]
