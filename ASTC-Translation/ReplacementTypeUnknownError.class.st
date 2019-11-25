Class {
	#name : #ReplacementTypeUnknownError,
	#superclass : #Error,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Translation'
}

{ #category : #accessing }
ReplacementTypeUnknownError >> description [
	^ String streamContents:[:s|
		s << 'Type ';
			print: type;
			<< ' doesn''t have a replacement registered'
		 ].
]

{ #category : #accessing }
ReplacementTypeUnknownError >> type [
	^ type
]

{ #category : #accessing }
ReplacementTypeUnknownError >> type: aType [
	type := aType
]
