Class {
	#name : #ASTCString,
	#superclass : #ASTCArray,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCString class >> asCType [
	^'char*'
]

{ #category : #comparing }
ASTCString >> = anotherStringNode [
		"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."
	
	self flag:#notPretty.
	(super = anotherStringNode isKindOf: Boolean) ifTrue:[ ^ super = anotherStringNode ].
	
	(methodTranslator getNodeTranslationType: anotherStringNode) = self class ifFalse:[ self error: 'both nodes have to be explicitly typed as Strings' ].
	
	methodTranslator addInclude: 'string'.
	^ ASTCOperator new 
		symbol: '=' ;
		addOperand: (ASTCFunctionCall new id: (ASTCIdentifier new id: #strcomp) ;
			addArgument: (self value acceptVisitor: methodTranslator);
			addArgument: (anotherStringNode acceptVisitor: methodTranslator);
			yourself);
		addOperand:( ASTCLiteral new value: 0);
		yourself
]
