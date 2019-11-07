Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCSmallInteger class >> asCType [
	^#int
]

{ #category : #default }
ASTCSmallInteger class >> defaultValue [
	^0
]

{ #category : #accessing }
ASTCSmallInteger class >> value: anInteger [ 

	^ self new
		value: anInteger;
		yourself
]

{ #category : #translation }
ASTCSmallInteger >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> - anotherSmallInteger [

	^ self newBinaryOperatorNamed: '-' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> / anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> < anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '<' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> = anotherSmallInteger [
	"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."
	
	self flag:#notPretty.
	(super = anotherSmallInteger isKindOf: Boolean) ifTrue:[ ^ (super = anotherSmallInteger isKindOf: Boolean) ].
	
	^ self newBinaryOperatorNamed: '==' withArgument: anotherSmallInteger

]

{ #category : #translation }
ASTCSmallInteger >> > anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '>' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res.
		
]

{ #category : #translation }
ASTCSmallInteger >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [ self error: 'Wrong number of arguments.' ]
		ifFalse: [ iterID := (aBlock arguments at: 1) acceptVisitor: methodTranslator ].
	"type checking"
	(((methodTranslator getNodeTranslationType: stop) = ASTCSmallInteger)
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
