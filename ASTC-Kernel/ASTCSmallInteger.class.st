Class {
	#name : #ASTCSmallInteger,
	#superclass : #ASTCNumber,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCSmallInteger class >> asCType [
	^ #int
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
ASTCSmallInteger >> bitAnd: aSmallInteger [
	self flag: #toCheck."UNSURE ABOUT THIS ONE"
	^ self translatedValue bitAnd: (aSmallInteger acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCSmallInteger >> to: stop by: step do: aBlock [
	| node arg receiver | 
	node := self to: stop  do: aBlock.
	
	receiver := ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself.
	arg := step acceptVisitor: methodTranslator.
	arg isLiteral ifTrue: [ self halt. "Should add a check for step to be different of 0 or optimize the symbol" ].
	
	node iteratorModification: (receiver assign: (receiver + arg)).
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
			(iterID <= (stop acceptVisitor: methodTranslator));
		iteratorModification:
			(iterID preIncr);
		body: (aBlock acceptVisitor: methodTranslator);
		yourself
]
