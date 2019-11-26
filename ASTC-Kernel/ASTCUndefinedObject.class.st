Class {
	#name : #ASTCUndefinedObject,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'message performing' }
ASTCUndefinedObject >> perform: aMessage withArguments: anArray [
	self halt.
]
