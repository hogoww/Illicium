Class {
	#name : #ASTCKernelClasses,
	#superclass : #Object,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'myself',
		'visitor'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #'reflective operations' }
ASTCKernelClasses >> doesNotUnderstand: aMessage [
	self flag:#missingArguments.
	^ASTCFunctionCall new
		id: (ASTCIdentifier new id: (self formatSelector:(aMessage selector)); yourself) ;
		arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
		yourself.
]
