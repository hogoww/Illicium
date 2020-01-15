Class {
	#name : #ReservedKeywordUse,
	#superclass : #Error,
	#instVars : [
		'keyword'
	],
	#category : #'ASTC-Translation-errors'
}

{ #category : #accessing }
ReservedKeywordUse >> description [
	^ String streamContents:[:s|
		s print: keyword;
			<< ' is reserved a reserved keyword in C.'
		 ].
]

{ #category : #accessing }
ReservedKeywordUse >> keyword [
	^ keyword
]

{ #category : #accessing }
ReservedKeywordUse >> keyword: aSymbol [
	keyword := aSymbol
]
