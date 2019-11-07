Class {
	#name : #ASTCKernelClasses,
	#superclass : #Object,
	#instVars : [
		'value',
		'methodTranslator'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCKernelClasses class >> asCType [
	"since SubclassResponsibility value can be used, it can make debugging hard. And error solves that."
	self error:'Must be defined'.
	^SubclassResponsibility
]

{ #category : #'message performing' }
ASTCKernelClasses >> perform: aSelector withArguments: anArray [

	^(self class methodDictionary includesKey: aSelector)
	ifTrue:[ super perform:aSelector withArguments: anArray ] 
	ifFalse:[	 self doesNotUnderstand: (Message selector: aSelector arguments: anArray) ].
	" 
	self browse 
	"
]

{ #category : #printing }
ASTCKernelClasses >> printOn: aStream [
	aStream << self asString.

]

{ #category : #converting }
ASTCKernelClasses >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<<')'.
		].
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
	^methodTranslator
]

{ #category : #accessing }
ASTCKernelClasses >> visitor: aVisitor [
	methodTranslator:= aVisitor.
	^methodTranslator
]
