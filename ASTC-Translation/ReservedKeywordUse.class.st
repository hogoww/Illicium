Class {
	#name : #ReservedKeywordUse,
	#superclass : #Error,
	#instVars : [
		'keyword'
	],
	#category : #'ASTC-Translation-errors'
}

{ #category : #accessing }
ReservedKeywordUse >> keyword [
	^ keyword
]

{ #category : #accessing }
ReservedKeywordUse >> keyword: aSymbol [
	keyword := aSymbol
]
