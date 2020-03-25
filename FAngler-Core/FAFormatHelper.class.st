Class {
	#name : #FAFormatHelper,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'FAngler-Core-Utility'
}

{ #category : #formatting }
FAFormatHelper class >> formatSelector: aSelector [
	"we first remove the :"
	| functionID counter |
	functionID := String new writeStream.
	aSelector do:[:aChar | 
		"remove the :"
		aChar = $:
			ifFalse:[ functionID << aChar ]
			].
	"remove the underscores present before letters"
	counter := 0.
	functionID := functionID contents.
	functionID reverseDo:[:aChar|
		aChar = $_ 
			ifTrue: [ counter := counter + 1 ]
			ifFalse: [ ^ functionID contents first: functionID size - counter ] ]
]
