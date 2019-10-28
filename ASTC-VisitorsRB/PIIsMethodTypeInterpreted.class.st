Class {
	#name : #PIIsMethodTypeInterpreted,
	#superclass : #PIAbstractTypeVisitor,
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitFFIMethodType: aFFIMethodType [
	self flag:#todo.
	^true
]

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitIfTrueIfFalseMethodType: anIfTrueIfFalseMethodType [
	"Phineas Doesn't interpret that MethodNode, no typing for the AST"
	^false
]

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitMethodType: aMethodType [
	"visiting"
	self flag:#todo.
	^true
	
]

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitPrimitiveMethodType: aPrimitiveMethodType [
	"Phineas's heuristic is to say that the return type of the method is the same as the primitive one, and doesn't interpret it.
	Therefore the messages won't appear in anInferer types messagesTypes.
	So, in our case, we can't type a primitiveMethodType's AST."
	^false
]

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitSmallIntegerMethodType: aSmallIntegerMethodType [ 
	"See visitPrimitiveMethodType"
	^aSmallIntegerMethodType isPrimitive not
]

{ #category : #visiting }
PIIsMethodTypeInterpreted >> visitSmalltalkMethodType: aSmalltalkMethodType [ 
	"We still want to visit every message node under this"
	^true
]
