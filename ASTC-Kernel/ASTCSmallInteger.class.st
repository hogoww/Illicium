Class {
	#name : #ASTCSmallInteger,
	#superclass : #Object,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'myself',
		'visitor'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCSmallInteger class >> asType [
	^'int'
]

{ #category : #accessing }
ASTCSmallInteger >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #accessing }
ASTCSmallInteger >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #accessing }
ASTCSmallInteger >> - anotherSmallInteger [

	^ self newBinaryOperatorNamed: '-' withArgument: anotherSmallInteger
]

{ #category : #accessing }
ASTCSmallInteger >> / anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #accessing }
ASTCSmallInteger >> = anotherSmallInteger [
	visitor class = ASTCFromPharo ifTrue:[
		^ self newBinaryOperatorNamed: '==' withArgument: anotherSmallInteger
		].
	
	^self myself=anotherSmallInteger 
]

{ #category : #accessing }
ASTCSmallInteger >> asString [
	^self myself asString .
]

{ #category : #format }
ASTCSmallInteger >> asType [
	^'int'
]

{ #category : #accessing }
ASTCSmallInteger >> doesNotUnderstand: aMessage [
	self flag:#missingArguments.
	^ASTCFunctionCall new
		id: (ASTCIdentifier new id: (self formatSelector:(aMessage selector)); yourself) ;
		arguments: (ASTCContainer new visitArgs: aMessage arguments with: visitor ; yourself);
		yourself.

	
	"Transcript show: self; show: ' didn''t understand : ' ; show: aMessage selector; cr."
]

{ #category : #accessing }
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

{ #category : #accessing }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res operands add:(self myself acceptVisitor: self visitor).
	res operands add:(anArgument acceptVisitor: self visitor).
	^res.
		
]

{ #category : #accessing }
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
