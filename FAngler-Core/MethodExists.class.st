Class {
	#name : #MethodExists,
	#superclass : #Error,
	#instVars : [
		'methodSelector'
	],
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
MethodExists >> methodSelector [
	^ methodSelector
]

{ #category : #accessing }
MethodExists >> methodSelector: aSelector [
	methodSelector := aSelector
]
