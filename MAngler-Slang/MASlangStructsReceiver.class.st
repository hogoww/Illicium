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
		^ type isPointer 
				ifTrue: [ self translatedReceiver -> (ASTCLiteral value: aMessage selector) ]
				ifFalse:[ self translatedReceiver structStaticAccess: (ASTCLiteral value: aMessage selector) ].
		  ].
	
	^ self asFunctionCall: aMessage selector withArguments: aMessage arguments
]
