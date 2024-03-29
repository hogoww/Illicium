Class {
	#name : #UnsupportedFeature,
	#superclass : #Error,
	#instVars : [
		'feature'
	],
	#category : #'FAngler-Core-Errors'
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
