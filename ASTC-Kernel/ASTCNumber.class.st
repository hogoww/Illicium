Class {
	#name : #ASTCNumber,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCNumber class >> asCType [
	^#float
]

{ #category : #default }
ASTCNumber class >> defaultValue [
	^0.0
]

{ #category : #accessing }
ASTCNumber class >> value: aFloat [

	^ self new
		value: aFloat;
		yourself
]

{ #category : #translation }
ASTCNumber >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> - anotherSmallInteger [

	^ self newBinaryOperatorNamed: '-' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> / anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> < anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '<' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> <= anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '<=' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> > anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '>' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCNumber >> >= aFloat [
	
	^ self newBinaryOperatorNamed: '>=' withArgument: aFloat
]

{ #category : #translation }
ASTCNumber >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res
]
