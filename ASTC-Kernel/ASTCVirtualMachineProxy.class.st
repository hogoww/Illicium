Class {
	#name : #ASTCVirtualMachineProxy,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCVirtualMachineProxy class >> asCType [ 
	^'struct VirtualMachine*'.
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> cCoerce: aVariable to: aType [
	self flag: #hack.
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (ASTCType new type: (methodTranslator getReplacementType: aType value asCType asPharoType asTypeReification))
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> castTo: aType [
	aType isString ifFalse:[ BadArgument new expected: String; result: aType class ]. 
	^ self cCoerce: self value to: aType
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand ifTrue:[ Error signal: 'infiniteRecursion' ].

	^ (ASTCIdentifier new id:'interpreterProxy'; yourself)
		-> (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (methodTranslator formatSelector:(aMessage selector)); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]
