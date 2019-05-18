Class {
	#name : #ASTCKernelClasses,
	#superclass : #ASTCObject,
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

{ #category : #converting }
ASTCKernelClasses >> asString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<<')'.
		].
]

{ #category : #'reflective operations' }
ASTCKernelClasses >> doesNotUnderstand: aMessage [
	^ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (self formatSelector:(aMessage selector)); yourself) ;
		arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
		yourself.
		

]

{ #category : #printing }
ASTCKernelClasses >> printOn: aStream [
	aStream << self asString.

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
