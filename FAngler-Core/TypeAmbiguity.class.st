Class {
	#name : #TypeAmbiguity,
	#superclass : #Error,
	#instVars : [
		'types'
	],
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
TypeAmbiguity >> description [ 
	^ String streamContents: [ :stream |
		stream << self class name;
			<< ' between: ' ;
			print: types.
			].
]

{ #category : #accessing }
TypeAmbiguity >> types [
	^ types
]

{ #category : #accessing }
TypeAmbiguity >> types: aCollectionOfType [
	types := aCollectionOfType
]
