Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCKernelClasses,
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCSmallInteger class >> asCType [
	^#int
]

{ #category : #translation }
ASTCSmallInteger >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> - anotherSmallInteger [

	^ self newBinaryOperatorNamed: '-' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> / anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> = anotherSmallInteger [
	"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."

	visitor class = ASTCFromPharo ifTrue:[
		^ self newBinaryOperatorNamed: '==' withArgument: anotherSmallInteger
		].
	^self value = anotherSmallInteger value.
]

{ #category : #default }
ASTCSmallInteger >> defaultValue [
	^0
]

{ #category : #translation }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res operands add:(self value acceptVisitor: self visitor).
	res operands add:(anArgument acceptVisitor: self visitor).
	^res.
		
]
