Class {
	#name : #RandomTestClass,
	#superclass : #Object,
	#category : #ASTCBuilder
}

{ #category : #'as yet unclassified' }
RandomTestClass >> factorialR: n [
	n=0 ifTrue:[^1]
		 ifFalse:[^n*(self factorialR:(n-1))].
]
