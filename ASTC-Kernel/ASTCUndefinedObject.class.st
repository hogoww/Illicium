Class {
	#name : #ASTCUndefinedObject,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCUndefinedObject class >> asCType [
	^ #void
]

{ #category : #'message performing' }
ASTCUndefinedObject >> perform: aMessage withArguments: anArray [
	self halt.
]
