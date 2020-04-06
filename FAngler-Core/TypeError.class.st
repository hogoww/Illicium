Class {
	#name : #TypeError,
	#superclass : #Error,
	#instVars : [
		'actualType',
		'expectedType'
	],
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
TypeError >> actualType [
	^ actualType
]

{ #category : #accessing }
TypeError >> actualType: anObject [
	actualType := anObject
]

{ #category : #accessing }
TypeError >> description [	
	^ String streamContents: [ :s | 
		s << 'Got unexpected' << actualType <<
		(expectedType ifNil: '' 
			ifNotNil: [ ^ s << ' instead of ' << expectedType ]) ]
]

{ #category : #accessing }
TypeError >> expectedType [
	^ expectedType
]

{ #category : #accessing }
TypeError >> expectedType: anObject [
	expectedType := anObject
]
