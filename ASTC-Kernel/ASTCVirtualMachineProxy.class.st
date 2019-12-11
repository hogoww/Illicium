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
	^ (aVariable acceptVisitor: methodTranslator) castTo: self asASTCType 
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> castTo: aType [
	aType isString ifFalse:[ BadArgument new expected: String; result: aType class ]. 
	^ self cCoerce: self value to: aType
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand ifTrue:[ Error signal: 'infiniteRecursion' ].

	^ASTCOperator new
		symbol:'->';
		addOperand: (ASTCIdentifier new id:'interpreterProxy'; yourself);
		addOperand: (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (methodTranslator formatSelector:(aMessage selector)); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
				yourself);
			yourself
		

]
