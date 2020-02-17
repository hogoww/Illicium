Class {
	#name : #IlliciumObject,
	#superclass : #IlliciumKernelClass,
	#category : #'MAngler-Illicium-messages-translators'
}

{ #category : #type }
IlliciumObject class >> asCType [
	^'sqInt'
]

{ #category : #accessing }
IlliciumObject class >> asPharoType [ 
	^ self subclassResponsibility
]

{ #category : #'message performing' }
IlliciumObject >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedReceiver equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:[ ^ super = anotherObject ]) ]
]

{ #category : #comparing }
IlliciumObject >> asFloat [
	^ methodTranslator forward: (MessageSend receiver: self receiverNode selector: #castTo: argument: #float asLiteralNode) to: InterpreterProxy
]

{ #category : #comparing }
IlliciumObject >> asInteger [
	^ methodTranslator forward: (MessageSend receiver: self receiverNode selector: #castTo: argument: #int asLiteralNode) to: InterpreterProxy
]

{ #category : #comparing }
IlliciumObject >> asString [
	methodTranslator ifNil:[ ^ super asString ].
	^ methodTranslator forward: (MessageSend receiver: self receiverNode selector: #castTo: argument: #'char*' asLiteralNode) to: InterpreterProxy
]
