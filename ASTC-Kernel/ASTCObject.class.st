Class {
	#name : #ASTCObject,
	#superclass : #ASTCKernelClass,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCObject class >> asCType [
	^'sqInt'
]

{ #category : #accessing }
ASTCObject class >> asLiteralNodeFor: aValue [ 
	^ (RBLiteralNode value: aValue) 
		propertyAt: ASTCTypeAnnotationAST property 
		put: (self asPharoType -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #accessing }
ASTCObject class >> asPharoType [ 
	^ self subclassResponsibility
]

{ #category : #accessing }
ASTCObject class >> value: aValue [ 
	^ self new
		value: (self asLiteralNodeFor: aValue);
		yourself
]

{ #category : #'message performing' }
ASTCObject >> = anotherObject [
	self flag:#notPretty.
	(methodTranslator ifNil:[ ^ super = anotherObject ]).
	
	^ self translatedValue equals: (anotherObject acceptVisitor: methodTranslator)
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
