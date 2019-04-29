Class {
	#name : #ASTCKernelClasses,
	#superclass : #ASTCObject,
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'visitor',
		'value'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCKernelClasses class >> asCType [
	^SubclassResponsibility
]

{ #category : #'reflective operations' }
ASTCKernelClasses >> doesNotUnderstand: aMessage [
	^ASTCFunctionCall new
		id: (ASTCIdentifier new id: (self formatSelector:(aMessage selector)); yourself) ;
		arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
		yourself.
		

]

{ #category : #evaluating }
ASTCKernelClasses >> value [ 
	^value
]

{ #category : #evaluating }
ASTCKernelClasses >> value: anObject [
	value:=anObject.
	^value
]

{ #category : #accessing }
ASTCKernelClasses >> visitor [ 
	^visitor
]

{ #category : #accessing }
ASTCKernelClasses >> visitor: aVisitor [
	visitor:= aVisitor.
	^visitor
]
