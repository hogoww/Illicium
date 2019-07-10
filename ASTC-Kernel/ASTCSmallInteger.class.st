Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCKernelClasses,
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
ASTCSmallInteger >> = anotherSmallInteger [
	"Act as translator only if it's the translator visitor that calls it."
	"That allow assert equal to be functionnal."

	(visitor isKindOf: ASTCMethodTranslator) ifTrue:[
 "ASTCMethodTranslator"		^ self newBinaryOperatorNamed: '==' withArgument: anotherSmallInteger
		].
	^self value = anotherSmallInteger value.
]

{ #category : #translation }
ASTCSmallInteger >> newBinaryOperatorNamed: operator withArgument: anArgument [
	|res|
	res:=ASTCOperator new 
		symbol: operator;
		yourself.
	res operands add:(self value acceptVisitor: self visitor).
	res operands add:(anArgument acceptVisitor: self visitor).
	^res.
		
]

{ #category : #translation }
ASTCSmallInteger >> to:stop do2: aBlock [
	^ASTCBlock new 
		add:
			(ASTCVariableDeclaration new
					type: self class asCType;
					id: (ASTCIdentifier new id:'i' ; yourself);
					init: (ASTCLiteral new value:'1' ; yourself);
					yourself);
		add: 
			(ASTCWhile new
				condition: 
					(ASTCLesserOperator new
						addOperands:(self value acceptVisitor:visitor);
						addOperands: (stop acceptVisitor:visitor);
						yourself);
				body: 
					(ASTCBlock new
						addAll:(aBlock acceptVisitor: visitor);
						add:
							(ASTCPreIncrementOperator new
							   operand: (ASTCIdentifier new id:'i' ; yourself);
								yourself);
						yourself);
				yourself);
		yourself.
]

{ #category : #translation }
ASTCSmallInteger >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [ self error: 'Wrong number of arguments.' ]
		ifFalse: [ iterID := (aBlock arguments at: 1) acceptVisitor: visitor ].
	"type checking"
	(((visitor getNodeTranslationType: stop) = ASTCSmallInteger)
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
				init:(self value acceptVisitor: visitor);
				yourself);
		condition:
			(ASTCOperator new
				symbol: '<=';
				addOperand: iterID;
				addOperand: (stop acceptVisitor: visitor);
				yourself);
		iteratorModification:
			(ASTCOperator new
				symbol: '++';
				addOperand:iterID;
				yourself);
		body: (aBlock acceptVisitor: visitor);
		yourself
]
