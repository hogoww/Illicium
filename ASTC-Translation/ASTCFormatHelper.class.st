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

	^ String streamContents: [:s| 
		aSelector do:[:aChar | 
			aChar = $:
				ifFalse:[ s << aChar ]
			]
		]
]
