Class {
	#name : #TypeAmbiguityError,
	#superclass : #Error,
	#instVars : [
		'types'
	],
	#category : #'ASTC-VisitorsRB-Errors'
}

{ #category : #accessing }
TypeAmbiguityError >> description [ 
	^ String streamContents: [ :stream |
		stream << self class name;
			<< ' between: ' ;
			print: types.
			].
]

{ #category : #accessing }
TypeAmbiguityError >> types [
	^ types
]

{ #category : #accessing }
TypeAmbiguityError >> types: aCollectionOfType [
	types := aCollectionOfType
]
