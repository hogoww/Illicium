Class {
	#name : #ASTCUndefinedObject,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCUndefinedObject class >> asCType [
	^ #void
]

{ #category : #'message performing' }
ASTCUndefinedObject >> perform: aMessage withArguments: anArray [
	self halt.
]
