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
ASTCVirtualMachineProxy >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand
	ifTrue:[ Error signal: 'infiniteRecursion' ].
	^ASTCOperator new
		symbol:'->';
		addOperand: (ASTCIdentifier new id:'interpreterProxy'; yourself);
		addOperand: (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (visitor formatSelector:(aMessage selector)); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: visitor ]);
				yourself);
			yourself
		

]
