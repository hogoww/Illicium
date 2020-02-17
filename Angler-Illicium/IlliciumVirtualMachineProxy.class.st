Class {
	#name : #IlliciumVirtualMachineProxy,
	#superclass : #IlliciumObject,
	#category : #'Angler-Illicium-messages-translators'
}

{ #category : #type }
IlliciumVirtualMachineProxy class >> asCType [ 
	^ #'struct VirtualMachine*'.
]

{ #category : #'reflective operations' }
IlliciumVirtualMachineProxy >> cCoerce: aVariable to: aType [
	self flag: #hack.
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (ASTCType new type: (methodTranslator getReplacementType: aType value asCType asPharoType asTypeReification))
]

{ #category : #'reflective operations' }
IlliciumVirtualMachineProxy >> castTo: aType [
	aType isString ifFalse:[ BadArgument new expected: String; result: aType class ]. 
	^ self cCoerce: self receiverNode to: aType
]

{ #category : #'reflective operations' }
IlliciumVirtualMachineProxy >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].

	^ self translatedReceiver
		-> (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (FAFormatHelper formatSelector:(aMessage selector)); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]
