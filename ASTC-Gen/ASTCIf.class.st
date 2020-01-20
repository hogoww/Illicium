Class {
	#name : #ASTCIf,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'then',
		'else'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCIf >> = anIf [
	super = anIf
		ifFalse: [ ^ false ].
	condition = anIf condition
		ifFalse: [ ^ false ].
	then = anIf then
		ifFalse: [ ^ false ].
	else = anIf else
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCIf >> acceptVisitor: aVisitor [
	aVisitor visitIf: self
]

{ #category : #accessing }
ASTCIf >> condition [
	^ condition
]

{ #category : #accessing }
ASTCIf >> condition: aCondition [
	aCondition ifNotNil: [ aCondition parent: self ].
	condition := aCondition
]

{ #category : #accessing }
ASTCIf >> else [
	^ else
]

{ #category : #accessing }
ASTCIf >> else: anElse [
	anElse ifNotNil: [ anElse parent: self ].
	else := anElse
]

{ #category : #testing }
ASTCIf >> isIf [
	^ true
]

{ #category : #accessing }
ASTCIf >> then [
	^ then
]

{ #category : #accessing }
ASTCIf >> then: aThen [
	aThen ifNotNil: [ aThen parent: self ].
	then := aThen
]
