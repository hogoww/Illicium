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

{ #category : #accessing }
ASTCObject class >> literalNodeFor: aValue [ 
	^ aValue asLiteralNode 
		propertyAt: ASTCTypeAnnotationAST property 
		put: (self asPharoType -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #accessing }
ASTCObject class >> value: aValue [ 
	^ self new
		value: (self literalNodeFor: aValue);
		yourself
]

{ #category : #'message performing' }
ASTCObject >> = anotherObject [
	self flag:#notPretty.
	(methodTranslator ifNil:[ ^ super = anotherObject ]).
	
	^ self translatedValue equals: (anotherObject acceptVisitor: methodTranslator)
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
