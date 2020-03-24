Class {
	#name : #FANewFilePrinter,
	#superclass : #Object,
	#instVars : [
		'fileName',
		'directory',
		'compilationUnit',
		'prettyPrinter'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #accessing }
FANewFilePrinter >> compilationUnit [
	^ compilationUnit
]

{ #category : #accessing }
FANewFilePrinter >> compilationUnit: anObject [
	compilationUnit := anObject
]

{ #category : #accessing }
FANewFilePrinter >> directory [
	^ directory
]

{ #category : #accessing }
FANewFilePrinter >> directory: anObject [
	directory := anObject
]

{ #category : #accessing }
FANewFilePrinter >> fileName [
	^ fileName
]

{ #category : #accessing }
FANewFilePrinter >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
FANewFilePrinter >> initialize [
	"default configuration, values should be replaced if needed."
	fileName := 'generatedCode'.
	directory := FileSystem workingDirectory / 'generated'.
]

{ #category : #accessing }
FANewFilePrinter >> prettyPrinter [
	^ prettyPrinter
]

{ #category : #accessing }
FANewFilePrinter >> prettyPrinter: anObject [
	prettyPrinter := anObject
]

{ #category : #accessing }
FANewFilePrinter >> printCodeInFileStream: aStream [
	prettyPrinter stream: aStream.
	compilationUnit acceptVisitor: prettyPrinter
]

{ #category : #accessing }
FANewFilePrinter >> printInFile [
	| file |
	directory ensureCreateDirectory.
	file := directory / (fileName,'.c').
	file exists ifTrue: [ file delete ].
	file writeStreamDo: [ :stream |
		self printCodeInFileStream: stream
	].
]
