Class {
	#name : #ASTCNumber,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #default }
ASTCNumber class >> defaultValue [
	^0.0
]

{ #category : #translation }
ASTCNumber >> * anotherSmallInteger [

	^  self translatedValue * (anotherSmallInteger acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> + anotherSmallInteger [
	
	^ self translatedValue + (anotherSmallInteger acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> - anotherSmallInteger [

	^  self translatedValue - (anotherSmallInteger acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> / anotherSmallInteger [
	
	^  self translatedValue / (anotherSmallInteger acceptVisitor: methodTranslator)
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
