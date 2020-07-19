Class {
	#name : #MASlangStructsReceiver,
	#superclass : #MAAbstractSlangReceiver,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #'reflective operations' }
MASlangStructsReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].
	(MASlangReceiver slangReservedSelector includes: aMessage selector) 
		ifTrue:[ self error: 'aSlang keyword should not be applied on a structure, as far as I know' ]. 
		"apparently there's quite a few, some of them surprising"
		
	(type pharoType isAccessor: aMessage selector) ifTrue: [ 
			self translateAsAccessor: aMessage
		].

	(self translateAsSpecialFunctionCall: aMessage) ifNotNil:[ :aCNode | ^ aCNode].
		
	^ self asFunctionCall: aMessage selector withArguments: aMessage arguments
]

{ #category : #'reflective operations' }
MASlangStructsReceiver >> isAccessor: aMethod [
	^ (type pharoType isAccessor: aMethod selector)
]
