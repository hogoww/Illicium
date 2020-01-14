Class {
	#name : #ASTCFormatHelper,
	#superclass : #Object,
	#instVars : [
		'classTranslator'
	],
	#category : #'ASTC-Translation-class-state'
}

{ #category : #formatting }
ASTCFormatHelper class >> formatSelector: aSelector [
	"we first remove the :"
	| functionID |
	functionID := String new writeStream.
	aSelector do:[:aChar | 
		aChar = $:
			ifFalse:[ functionID << aChar ]
			].		
	[ functionID peekLast = $_ ]
		whileTrue:[ functionID removeLast ].
	^ functionID contents
]
