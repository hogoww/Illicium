Class {
	#name : #EmptyTypeError,
	#superclass : #Error,
	#instVars : [
		'varName'
	],
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
EmptyTypeError >> description [
	^ String streamContents: [ :s | s << 'Did not find a type for variable: ' << varName << '.' ]
]

{ #category : #accessing }
EmptyTypeError >> varName [

	^ varName
]

{ #category : #accessing }
EmptyTypeError >> varName: anObject [

	varName := anObject
]
