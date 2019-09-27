Class {
	#name : #ASTCLoop,
	#superclass : #ASTCStatement,
	#instVars : [
		'condition',
		'body'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #accessors }
ASTCLoop >> body [
	^ body
]

{ #category : #accessors }
ASTCLoop >> body: aBody [
	aBody parent: self.
	^ body := aBody
]

{ #category : #accessors }
ASTCLoop >> condition [
	^ condition
]

{ #category : #accessors }
ASTCLoop >> condition: aCondition [
	aCondition parent: self.
	^ condition := aCondition
]
