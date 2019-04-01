"
I am a random test class.

My selectors are used by ASTCFromPharo as toy translations.
"
Class {
	#name : #RandomTestClass,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #tests }
RandomTestClass >> factorialR: n [
	"basic toy function"
	n=0
	ifTrue:[
		^1
		]
	ifFalse:[
		^n*(self factorialR:(n-1))
		]
	
]

{ #category : #tests }
RandomTestClass >> factorialR: n anotherArgument: n2 [
	"basic toy function"
	| res |
	res:=0.
	n=0
	ifTrue:[
		res:=1
		]
	ifFalse:[
		res:=n*(self factorialR:(n-1))
		].
	^res.
]
