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

{ #category : #accessing }
ASTCIf >> condition [
	^ condition
]

{ #category : #accessing }
ASTCIf >> condition: aCondition [
	aCondition parent: self.
	condition := aCondition
]

{ #category : #accessing }
ASTCIf >> else [
	^ else
]

{ #category : #accessing }
ASTCIf >> else: anElse [
	anElse parent: self.
	else := anElse
]

{ #category : #accessing }
ASTCIf >> then [
	^ then
]

{ #category : #accessing }
ASTCIf >> then: aThen [
	aThen parent: self.
	then := aThen
]
