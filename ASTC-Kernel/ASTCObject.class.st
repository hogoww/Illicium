Class {
	#name : #ASTCObject,
	#superclass : #ASTCKernelClass,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCObject class >> asCType [
	^'sqInt'
]

{ #category : #accessing }
ASTCObject class >> asPharoType [ 
	^ self subclassResponsibility
]

{ #category : #'message performing' }
ASTCObject >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedValue equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:[ ^ super = anotherObject ]) ]
]

{ #category : #comparing }
ASTCObject >> asFloat [
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #float asLiteralNode) to: InterpreterProxy
]

{ #category : #comparing }
ASTCObject >> asInteger [
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #int asLiteralNode) to: InterpreterProxy
]

{ #category : #comparing }
ASTCObject >> asString [
	methodTranslator ifNil:[ ^ super asString ].
	^ methodTranslator forward: (MessageSend receiver: self value selector: #castTo: argument: #'char*' asLiteralNode) to: InterpreterProxy
]
