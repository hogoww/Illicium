Class {
	#name : #FAMakefileRule,
	#superclass : #Object,
	#instVars : [
		'name',
		'phony',
		'options',
		'dependencies',
		'lines'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #accessing }
FAMakefileRule >> addBodyLine: aLine [
	lines add: aLine
]

{ #category : #accessing }
FAMakefileRule >> dependencies [
	^ dependencies
]

{ #category : #accessing }
FAMakefileRule >> dependencies: anObject [
	dependencies := anObject
]

{ #category : #accessing }
FAMakefileRule >> initialize [
	lines := OrderedCollection new.
]

{ #category : #accessing }
FAMakefileRule >> name [
	^ name
]

{ #category : #accessing }
FAMakefileRule >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FAMakefileRule >> options [
	^ options
]

{ #category : #accessing }
FAMakefileRule >> options: anObject [
	options := anObject
]

{ #category : #accessing }
FAMakefileRule >> phony [
	^ phony
]

{ #category : #accessing }
FAMakefileRule >> phony: anObject [
	phony := anObject
]

{ #category : #accessing }
FAMakefileRule >> printOn: aStream [
	"(options)
	Name: (dependencies)
		body
	(phony)
	" 
	options ifNotNil: [ aStream << options ; crlf ].
	aStream << name << ':'.
		dependencies ifNotNil: [ aStream << ' ' << dependencies ].
		aStream crlf.
	lines do: [ :aLine | aStream tab ; << aLine ; crlf ].
	phony ifNotNil: [ aStream << '.PHONY: ' << phony ].
]
