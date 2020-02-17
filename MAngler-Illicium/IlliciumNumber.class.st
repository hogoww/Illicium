Class {
	#name : #IlliciumNumber,
	#superclass : #IlliciumObject,
	#category : #'MAngler-Illicium-messages-translators'
}

{ #category : #translation }
IlliciumNumber >> * aNumber [

	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> + aNumber [
	
	^ self translatedReceiver + (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> - aNumber [

	^ self translatedReceiver - (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> / aNumber [
	
	^ self translatedReceiver / (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> < aNumber [
	
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> <= aNumber [
	
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> > aNumber [
	
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumNumber >> >= aNumber [
	
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]
