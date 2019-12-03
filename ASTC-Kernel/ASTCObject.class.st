Class {
	#name : #ASTCObject,
	#superclass : #ASTCKernelClasses,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCObject class >> asCType [
	^'void*'
]

{ #category : #'message performing' }
ASTCObject >> = anotherObject [
	self flag:#notPretty.
	(methodTranslator ifNil:[ ^ super = anotherObject ]).
	
	^ self newBinaryOperatorNamed: '==' withArgument: anotherObject
]

{ #category : #comparing }
ASTCObject >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res
]
