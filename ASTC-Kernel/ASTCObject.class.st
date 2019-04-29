Class {
	#name : #ASTCObject,
	#superclass : #Object,
	#category : #'ASTC-Kernel'
}

{ #category : #'message performing' }
ASTCObject >> perform: aSelector withArguments: anArray [
	^(self class methodDictionary includesKey: aSelector)
	ifTrue:[ super perform:aSelector withArguments: anArray ] 
	ifFalse:[	 self doesNotUnderstand: (Message selector: aSelector arguments: anArray) ].
	
]
