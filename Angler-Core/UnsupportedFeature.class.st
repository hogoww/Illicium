Class {
	#name : #UnsupportedFeature,
	#superclass : #Error,
	#instVars : [
		'feature'
	],
	#category : #'Angler-Core-errors'
}

{ #category : #accessing }
UnsupportedFeature >> description [
	^ String streamContents:[:s|
		s << feature
			<< ' is currently an unsupported feature.'
		]
]

{ #category : #accessing }
UnsupportedFeature >> feature [ 
	^ feature
]

{ #category : #accessing }
UnsupportedFeature >> feature: aString [
	feature := aString
]
