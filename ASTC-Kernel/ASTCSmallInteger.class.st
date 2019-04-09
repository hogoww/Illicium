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
	^self myself=anotherSmallInteger myself.
]

{ #category : #'as yet unclassified' }
ASTCSmallInteger >> asCType [
	^#int
]

{ #category : #converting }
ASTCSmallInteger >> asString [
	^self myself asString.
]

{ #category : #default }
ASTCSmallInteger >> defaultValue [
	^0
]

{ #category : #translation }
ASTCSmallInteger >> ifTrue: trueBlock ifFalse: falseBlock [
	^ASTCIf new
		predicate:(self myself acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #accessing }
ASTCSmallInteger >> myself [
	^ myself
]

{ #category : #accessing }
ASTCSmallInteger >> myself: anObject [
	myself := anObject
]

{ #category : #translation }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res operands add:(self myself acceptVisitor: self visitor).
	res operands add:(anArgument acceptVisitor: self visitor).
	^res.
		
]

{ #category : #printing }
ASTCSmallInteger >> printOn: aStream [
	aStream << self asString.
	"aStream 	<< (self class asString)
				<<'('
				<< (self asString)
				<<')'."
]

{ #category : #accessing }
ASTCSmallInteger >> visitor [
	^ visitor
]

{ #category : #accessing }
ASTCSmallInteger >> visitor: anObject [
	visitor := anObject
]
