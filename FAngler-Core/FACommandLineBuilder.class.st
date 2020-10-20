Class {
	#name : #FACommandLineBuilder,
	#superclass : #Object,
	#instVars : [
		'files'
	],
	#classVars : [
		'VMLocation'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #accessing }
FACommandLineBuilder class >> VMLocation [
	^ VMLocation
]

{ #category : #accessing }
FACommandLineBuilder class >> VMLocation: aFilePath [
	VMLocation := aFilePath
]

{ #category : #building }
FACommandLineBuilder >> buildCommandLine [
	VMLocation ifNil: [ self error: 'please set the path of the CompileInHeader branch VM' ].
]
