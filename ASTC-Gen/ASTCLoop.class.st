Class {
	#name : #ASTCLoop,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

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
