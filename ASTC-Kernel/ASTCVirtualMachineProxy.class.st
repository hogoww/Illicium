Class {
	#name : #ASTCVirtualMachineProxy,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCVirtualMachineProxy class >> asCType [ 
	^'struct VirtualMachine*'.
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> asFloat [
	^ ASTCOperator new
		symbol: '(float)';
		addOperand: (self value acceptVisitor: methodTranslator)
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
