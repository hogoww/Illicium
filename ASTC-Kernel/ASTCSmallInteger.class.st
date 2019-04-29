Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCKernelClasses,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
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

{ #category : #converting }
ASTCSmallInteger >> asString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<<')'.
		].
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

{ #category : #printing }
ASTCSmallInteger >> printOn: aStream [
	aStream << self asString.

]
