Class {
	#name : #ASTCLoop,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCLoop >> = aLoop [
	super = aLoop
		ifFalse: [ ^ false ].
	condition = aLoop condition
		ifFalse: [ ^ false ].
	body = aLoop body
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #testing }
ASTCLoop >> acceptVisitor: aVisitor [
	aVisitor visitLoop: self
]

{ #category : #accessing }
ASTCLoop >> body [
	^ body
]

{ #category : #accessing }
ASTCLoop >> body: aBody [
	aBody parent: self.
	body := aBody
]

{ #category : #accessing }
ASTCLoop >> condition [
	^ condition
]

{ #category : #accessing }
ASTCLoop >> condition: aCondition [
	aCondition parent: self.
	condition := aCondition
]

{ #category : #testing }
ASTCLoop >> isLoop [
	^ true
]
