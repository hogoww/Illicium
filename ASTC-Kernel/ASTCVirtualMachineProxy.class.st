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
	ifFalse:[ self signal: 'infiniteRecursion' ].
	^ASTCOperator new
		symbol:'->';
		operands:(ASTCContainer new
			add: (ASTCIdentifier new id:'interpreterProxy'; yourself);
			add: (ASTCFunctionCall new 
				id: (ASTCIdentifier new id: (visitor formatSelector:(aMessage selector)); yourself) ;
				arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
					yourself);
				yourself);
			yourself.
		

]
