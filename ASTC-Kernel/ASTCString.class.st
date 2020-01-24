Class {
	#name : #ASTCString,
	#superclass : #ASTCArray,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCString class >> asCType [
	^'char*'
]

{ #category : #type }
ASTCString class >> asPharoType [ 
	^ String asTypeReification
]

{ #category : #comparing }
ASTCString >> = anotherStringNode [
		"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."
	
	self flag:#notPretty.
	(super = anotherStringNode isKindOf: Boolean) ifTrue:[ ^ super = anotherStringNode ].
	
	(methodTranslator getNodeTranslationType: anotherStringNode) = self class ifFalse:[ self error: 'both nodes have to be explicitly typed as Strings' ].
	
	methodTranslator addInclude: 'string'.
	^ (ASTCFunctionCall new id: (ASTCIdentifier new id: #strcomp) ;
			addArgument: self translatedReceiver;
			addArgument: (anotherStringNode acceptVisitor: methodTranslator);
			yourself)
		equals: (ASTCLiteral new value: ASTCSmallInteger value: 0)
]
