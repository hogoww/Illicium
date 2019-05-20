Class {
	#name : #ASTCVirtualMachineProxy,
	#superclass : #ASTCKernelClasses,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCVirtualMachineProxy class >> asCType [ 
	^'VirtualMachine*'.
]

{ #category : #'reflective operations' }
ASTCVirtualMachineProxy >> doesNotUnderstand: aMessage [
	^ASTCOperator new
		symbol:'->';
		operands:(ASTCContainer new
			add: (ASTCIdentifier new id:'interpreterProxy'; yourself);
			add: (ASTCFunctionCall new 
				id: (ASTCIdentifier new id: (self formatSelector:(aMessage selector)); yourself) ;
				arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
					yourself);
				yourself);
			yourself.
		

]
