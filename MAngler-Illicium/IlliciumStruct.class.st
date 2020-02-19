Class {
	#name : #IlliciumStruct,
	#superclass : #Object,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #'reflective operations' }
IlliciumStruct class >> doesNotUnderstand: aMessage [
	| structName |
	structName:=aMessage selector.
	self allSubclasses detect: [ :each | each name = structName]
	ifFound:[:aSubclass| "if the subclass already exists, returns it"
		^aSubclass.
	]	
	ifNone:["Subclass unknown, we create it"
		^self error:'Struct ' , aMessage selector , ' isn''t defined.'
	]
	
]
