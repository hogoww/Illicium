Class {
	#name : #ASTCFloat,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCFloat class >> asCType [
	^#float
]

{ #category : #default }
ASTCFloat class >> defaultValue [
	^0.0
]

{ #category : #accessing }
ASTCFloat class >> value: aFloat [

	^ self new
		value: aFloat;
		yourself
]

{ #category : #translation }
ASTCFloat >> * anotherSmallInteger [

	^ self newBinaryOperatorNamed: '*' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> + anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '+' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> - anotherSmallInteger [

	^ self newBinaryOperatorNamed: '-' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> / anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '/' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> < anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '<' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> <= anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '<=' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> = aFloat [
	^ super = aFloat
]

{ #category : #translation }
ASTCFloat >> > anotherSmallInteger [
	
	^ self newBinaryOperatorNamed: '>' withArgument: anotherSmallInteger
]

{ #category : #translation }
ASTCFloat >> >= aFloat [
	
	^ self newBinaryOperatorNamed: '>=' withArgument: aFloat
]

{ #category : #translation }
ASTCFloat >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res addOperand:(self value acceptVisitor: self visitor).
	res addOperand:(anArgument acceptVisitor: self visitor).
	^res
]

{ #category : #translation }
ASTCFloat >> to: stop do: aBlock [
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
