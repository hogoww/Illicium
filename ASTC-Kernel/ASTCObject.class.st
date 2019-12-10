Class {
	#name : #ASTCObject,
	#superclass : #ASTCKernelClass,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCObject class >> asCType [
	^'sqInt'
]

{ #category : #'message performing' }
ASTCObject >> = anotherObject [
	self flag:#notPretty.
	(methodTranslator ifNil:[ ^ super = anotherObject ]).
	
	^ self newBinaryOperatorNamed: '==' withArgument: anotherObject
]

{ #category : #comparing }
ASTCObject >> asFloat [
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #float) to: InterpreterProxy
]

{ #category : #comparing }
ASTCObject >> asInteger [
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #int) to: InterpreterProxy
]

{ #category : #comparing }
ASTCObject >> asString [
	methodTranslator ifNil:[ ^ super asString ].
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #'char*') to: InterpreterProxy
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
