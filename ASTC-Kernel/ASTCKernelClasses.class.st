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
	self subclassResponsibility 
]

{ #category : #'message performing' }
ASTCKernelClasses >> = anotherObject [
	^ self value = anotherObject value
]

{ #category : #'message performing' }
ASTCKernelClasses >> perform: aSelector withArguments: anArray [
	" Cherry picking for unknown types are not great. Needs improvement.
	Some stuff get translated by default for UserClasses, which are basically an unknown type."
	^(self class methodDictionary includesKey: aSelector)
	ifTrue:[ super perform: aSelector withArguments: anArray ] 
	ifFalse:[	 self doesNotUnderstand: ((Message selector: aSelector arguments: anArray) lookupClass: self class ; yourself) ].
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
