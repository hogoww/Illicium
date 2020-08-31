Class {
	#name : #IlliciumString,
	#superclass : #IlliciumArray,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumString class >> asCType [
	^'char*'
]

{ #category : #type }
IlliciumString class >> asPharoType [ 
	^ String asTypeReification
]

{ #category : #comparing }
IlliciumString >> = anotherStringNode [
		"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."
	
	self flag:#notPretty.
	(super = anotherStringNode isKindOf: Boolean) ifTrue:[ ^ super = anotherStringNode ].
	
	(methodTranslator getNodeTranslationType: anotherStringNode) = self class ifFalse:[ self error: 'both nodes have to be explicitly typed as Strings' ].
	
	methodTranslator addInclude: 'string.h'.
	^ (ASTCFunctionCall new id: (ASTCIdentifier new id: #strcomp) ;
			addArgument: self translatedReceiver;
			addArgument: (anotherStringNode acceptVisitor: methodTranslator);
			yourself)
		equals: (ASTCLiteral new value: IlliciumSmallInteger value: 0)
]
