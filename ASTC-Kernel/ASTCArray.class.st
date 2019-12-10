Class {
	#name : #ASTCArray,
	#superclass : #ASTCObject,
	#instVars : [
		'elementType'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCArray class >> asCType [
	" Array don't know what type they are because it's a complex one. 
	It relies on CollectionType, which will build the corresponding CType"
	^ self shouldNotImplement 
]

{ #category : #accessing }
ASTCArray >> at: anIndex [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	 self flag:#todo.
	^ ASTCOperator new
		symbol:'[]';
		addOperand: (self value acceptVisitor: methodTranslator);
		addOperand: (anIndex acceptVisitor: methodTranslator);
		yourself
]

{ #category : #accessing }
ASTCArray >> at: anIndex put: aValue [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	^ ASTCOperator new
		symbol:'=';
		addOperand: (self at: anIndex );
		addOperand: (aValue acceptVisitor: methodTranslator);
		yourself
]

{ #category : #accessing }
ASTCArray >> do: aBlock [
	| size newBlock res arg iterator receiver |
	aBlock isBlock ifFalse:[ BadArgument new expected: RBBlockNode; result: aBlock class; signal ].
	aBlock arguments size = 1 ifFalse:[ ArgumentsCountMismatch signal ].
	
	size := [(value propertyAt: #type) key size] on: NotFound 
		do:[ self error: '#do: is only usable if the IV using it defines a size property' ].
	newBlock := aBlock copy.
	newBlock arguments at: 1 put: ((RBArgumentNode named: #i) parent: newBlock).
	res := methodTranslator forward: 
			(MessageSend receiver: (ASTCSmallInteger asLiteralNodeFor: 0) 
				selector: #to:do: 
				arguments:{ ASTCSmallInteger asLiteralNodeFor: size. newBlock} )
		to: SmallInteger.
		
	arg := (aBlock arguments at: 1) acceptVisitor: methodTranslator.
	iterator := (newBlock arguments at: 1) acceptVisitor: methodTranslator.
	receiver := self value acceptVisitor: methodTranslator.
	
	res body statements addFirst:
		(ASTCIf new condition: 
			(ASTCOperator new symbol: '==';
				addOperand: arg;
				addOperand: (ASTCLiteral new value: 'null'));
			then: (ASTCLiteral new value: 'break') asStatement;
			yourself).
	
	res body statements addFirst: 
		(ASTCOperator new symbol: '='; 
		addOperand: arg; 
		addOperand: 
			(ASTCOperator new symbol:'[]';
				addOperand: receiver;
				addOperand: iterator;
				yourself);
			yourself) 
		asStatement.
		
	^ res
]

{ #category : #accessing }
ASTCArray >> elementType [
	^ elementType
]

{ #category : #accessing }
ASTCArray >> elementType: aType [
	elementType := aType
]
