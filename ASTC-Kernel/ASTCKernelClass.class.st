Class {
	#name : #ASTCKernelClass,
	#superclass : #Object,
	#instVars : [
		'value',
		'methodTranslator'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCKernelClass class >> asCType [
	self subclassResponsibility 
]

{ #category : #'message performing' }
ASTCKernelClass >> = anotherObject [
	^ self value = anotherObject value
]

{ #category : #evaluating }
ASTCKernelClass >> asASTCType [
	^ ASTCType new type: self class; yourself
]

{ #category : #'message performing' }
ASTCKernelClass >> perform: aSelector withArguments: anArray [
	" Cherry picking for unknown types are not great. Needs improvement.
	Some stuff get translated by default for UserClasses, which are basically an unknown type."
	^ (self understandsForTranslation: aSelector)
	ifTrue:[ super perform: aSelector withArguments: anArray ] 
	ifFalse:[	 self doesNotUnderstand: ((Message selector: aSelector arguments: anArray) lookupClass: self class ; yourself) ].
	" 
	self browse 
	"
]

{ #category : #printing }
ASTCKernelClass >> printOn: aStream [
	aStream << self asString.

]

{ #category : #converting }
ASTCKernelClass >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<<')'.
		].
]

{ #category : #evaluating }
ASTCKernelClass >> translatedValue [
	^ self value acceptVisitor: methodTranslator
]

{ #category : #'message performing' }
ASTCKernelClass >> understandsForTranslation: aSelector [
	| class |
	"search the method until ASTCKernelClass, allow partial inheritence"
	class := self class.
	[ 
	(class methodDict includesKey: aSelector) ifTrue: [ ^ true ].
		class := class superclass.
	] doWhileFalse: [ class = ASTCKernelClass ]."should not be an infinite loop because this class should not be referenced."
	^ false
]

{ #category : #evaluating }
ASTCKernelClass >> value [ 
	^value
]

{ #category : #evaluating }
ASTCKernelClass >> value: anObject [
	value:=anObject.
	^value
]

{ #category : #accessing }
ASTCKernelClass >> visitor [ 
	^methodTranslator
]

{ #category : #accessing }
ASTCKernelClass >> visitor: aVisitor [
	methodTranslator:= aVisitor.
	^methodTranslator
]
