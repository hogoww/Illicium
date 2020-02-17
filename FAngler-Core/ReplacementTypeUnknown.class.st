Class {
	#name : #ReplacementTypeUnknown,
	#superclass : #Error,
	#instVars : [
		'type'
	],
	#category : #'FAngler-Core-errors'
}

{ #category : #accessing }
ReplacementTypeUnknown >> description [
	^ String streamContents:[:s|
		s << 'Type ';
			print: type;
			<< ' doesn''t have a replacement registered'
		 ].
]

{ #category : #accessing }
ReplacementTypeUnknown >> type [
	^ type
]

{ #category : #accessing }
ReplacementTypeUnknown >> type: aType [
	type := aType
]
