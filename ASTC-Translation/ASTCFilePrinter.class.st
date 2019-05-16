Class {
	#name : #ASTCFilePrinter,
	#superclass : #Object,
	#instVars : [
		'fileName',
		'classDictionary'
	],
	#category : #'ASTC-Translation'
}

{ #category : #accessing }
ASTCFilePrinter >> classDictionary [
	^ classDictionary
]

{ #category : #accessing }
ASTCFilePrinter >> classDictionary: aCollection [
	classDictionary := aCollection
]

{ #category : #accessing }
ASTCFilePrinter >> fileName [
	^ fileName
]

{ #category : #accessing }
ASTCFilePrinter >> fileName: aString [
	fileName := aString
]

{ #category : #printing }
ASTCFilePrinter >> printInFile [
	| file |
	file:=(FileSystem workingDirectory / 'generated') ensureCreateDirectory.
	file:= file / 'gen.c'.

	file writeStreamDo:[:stream |
		classDictionary do:[:each | stream << each prettyPrint. stream cr].
	].
]
