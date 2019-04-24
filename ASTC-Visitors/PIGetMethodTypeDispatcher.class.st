Class {
	#name : #PIGetMethodTypeDispatcher,
	#superclass : #PIAbstractMethodTypeDispatcher,
	#category : #'ASTC-Visitors-RBAnnotations'
}

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitFFIMethodType: aFFIMethodType [
	self flag:#todo.
	^true
]

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitIfTrueIfFalseMethodType: anIfTrueIfFalseMethodType [
	"Phineas Doesn't interpret that MethodNode, no typing for the AST"
	^false
]

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitMethodType: aMethodType [
	self flag:#todo.
	^true
]

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitPrimitiveMethodType: aPrimitiveMethodType [
	"Phineas's heuristic is to say that the return type of the method is the same as the primitive one, and doesn't interpret it.
	Therefore the messages won't appear in anInferer types messagesTypes.
	So, in our case, we can't type a primitiveMethodType's AST."
	^false
]

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitSmallIntegerMethodType: aSmallIntegerMethodType [
	"See visitPrimitiveMethodType"
	^aSmallIntegerMethodType isPrimitive not
]

{ #category : #visiting }
PIGetMethodTypeDispatcher >> visitSmalltalkMethodType: aSmalltalkMethodType [
	"We still want to visit every message node under this"
	^true
]
