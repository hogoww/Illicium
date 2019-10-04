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

{ #category : #accessors }
ASTCIf >> condition [
	^ condition
]

{ #category : #accessors }
ASTCIf >> condition: aCondition [
	aCondition parent: self.
	condition := aCondition
]

{ #category : #accessors }
ASTCIf >> else [
	^ else
]

{ #category : #accessors }
ASTCIf >> else: anElse [
	anElse parent: self.
	else := anElse
]

{ #category : #accessors }
ASTCIf >> then [
	^ then
]

{ #category : #accessors }
ASTCIf >> then: aThen [
	aThen parent: self.
	then := aThen
]
