Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCNumber,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCSmallInteger class >> asCType [
	^#int
]

{ #category : #default }
ASTCSmallInteger class >> asPharoType [ 
	^ SmallInteger asTypeReification
]

{ #category : #default }
ASTCSmallInteger class >> defaultValue [
	^0
]

{ #category : #translation }
ASTCSmallInteger >> // anotherSmallInteger [
	self flag:#toCheck. "May need to have a cast to int? I don't like it"
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> >> anotherSmallInteger [ 
	self flag: #toCheck."UNSURE ABOUT THIS ONE"
	^ self newBinaryOperatorNamed: '>>' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> bitAnd: anotherSmallInteger [
	self flag: #toCheck."UNSURE ABOUT THIS ONE"
	^ self newBinaryOperatorNamed: '&' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> bitShift: anotherSmallInteger [ 
	self flag: #toCheck."UNSURE ABOUT THIS ONE"
	^ self newBinaryOperatorNamed: '<<' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res
]

{ #category : #translation }
ASTCSmallInteger >> to: stop by: step do: aBlock [
	| node |
	node := self to: stop  do: aBlock.
	node isLiteral ifTrue: [ self halt. "Should add a check for step to be different of 0 or optimize the symbol" ].
	node iteratorModification: 
		(ASTCOperator new
			symbol: '+=';
			addOperand: (ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself);
			addOperand: (step acceptVisitor: methodTranslator);
			yourself).
	^ node
]

{ #category : #translation }
ASTCSmallInteger >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [ self error: 'Wrong number of arguments.' ]
		ifFalse: [ iterID := (aBlock arguments at: 1) acceptVisitor: methodTranslator ].
	"type checking"
	(((methodTranslator getNodeTranslationType: stop) = ASTCSmallInteger asTypeReification )
		and:[ aBlock isBlock ])
    ifFalse:[ self error: 'An arguments has the wrong type' ].
	^ ASTCFor new
		iteratorDefinition:
			(ASTCVariableDefinition new
				declaration:
					(ASTCVariableDeclaration new
						id: iterID ;
						type:
							(ASTCType new
								type: ASTCSmallInteger;
								yourself);
						yourself);
				init:(self value acceptVisitor: methodTranslator);
				yourself);
		condition:
			(ASTCOperator new
				symbol: '<=';
				addOperand: iterID;
				addOperand: (stop acceptVisitor: methodTranslator);
				yourself);
		iteratorModification:
			(ASTCOperator new
				symbol: '++';
				addOperand:iterID;
				yourself);
		body: (aBlock acceptVisitor: methodTranslator);
		yourself
]
