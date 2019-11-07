Class {
	#name : #ASTCUserClass,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCUserClass class >> asCType [
	^'void'
]

{ #category : #'reflective operations' }
ASTCUserClass >> doesNotUnderstand: aMessage [
	self flag: #checks ."needs to check that the message exists in the original class"
	aMessage selector = #doesnNotUnderstand ifTrue:[ self error: 'infinite recursion'].
	
	^ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (methodTranslator formatSelector: (aMessage selector)); yourself) ;
		arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
		yourself.
		
]
