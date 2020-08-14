Class {
	#name : #IlliciumObject,
	#superclass : #FAKernelClass,
	#category : #'MAngler-Illicium-MessagesTranslators'
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

{ #category : #'message performing' }
IlliciumObject >> cCode: aStringOrBlock [

	aStringOrBlock isBlock
		ifTrue: [ 
			^ aStringOrBlock acceptVisitor: methodTranslator ].
	aStringOrBlock isLiteralNode
		ifTrue: [ 
			^ aStringOrBlock value isEmpty 
				ifTrue:[ ASTCEmptyStatement new ]
				ifFalse: [ ASTCRawCCode new cCode: aStringOrBlock value; yourself ]].
	self error
	"I don't know if there is sometimes other stuff"
]

{ #category : #'message performing' }
IlliciumObject >> includeMyFile [
	^ methodTranslator addInclude: self class includeFileName.
]
