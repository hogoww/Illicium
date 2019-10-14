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
	
	^ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (visitor formatSelector: (aMessage selector)); yourself) ;
		arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
		yourself.
		
]
