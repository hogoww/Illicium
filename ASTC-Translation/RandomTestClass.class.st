"
I am a random test class.

My selectors are used by ASTCFromPharo as toy translations.
"
Class {
	#name : #RandomTestClass,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #'as yet unclassified' }
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
