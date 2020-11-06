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

	(self translateAsSpecialFunctionCall: aMessage) ifNotNil:[ :aCNode | ^ aCNode].
	
	^ self asFunctionCall: aMessage selector withArguments: aMessage arguments
]

{ #category : #'reflective operations' }
MASlangStructsReceiver >> isAccessor: aMethod [
	^ (type pharoType isAccessor: aMethod selector)
]

{ #category : #'reflective operations' }
MASlangStructsReceiver >> translateAsStructFunctionCall: aMessage [
	| res |
	res := self asFunctionCall: aMessage selector 
		withArguments: { receiverNode } , aMessage arguments.
	
	"struct methods expect a pointer, but sometimes it is sent to asimple struct instead"
	"Original slang inlines and doesn't care"
	"we instead replace it with reference"
	(receiverNode propertyAt: MASlangTypeAnnotator propertyName) isPointer 
		ifFalse: [ | receiver |
			res arguments: res arguments asOrderedCollection.
			receiver := res arguments removeFirst.
			res arguments addFirst: receiver asAddressOf.
			].
	
	^ res
]
