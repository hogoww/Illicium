Class {
	#name : #ASTCFloat,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'instance creation' }
ASTCFloat >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #arithmetic }
ASTCFloat >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #'instance creation' }
ASTCFloat >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res
]
