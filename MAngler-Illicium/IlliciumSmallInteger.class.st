Class {
	#name : #IlliciumSmallInteger,
	#superclass : #IlliciumNumber,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumSmallInteger class >> asCType [
	^ #int
]

{ #category : #default }
IlliciumSmallInteger class >> asPharoType [ 
	^ SmallInteger asTypeReification
]

{ #category : #default }
IlliciumSmallInteger class >> defaultValue [
	^0
]

{ #category : #translation }
IlliciumSmallInteger >> bitAnd: aSmallInteger [
	self flag: #toCheck."UNSURE ABOUT THIS ONE"
	^ self translatedReceiver & (aSmallInteger acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumSmallInteger >> even [
	^ (self translatedReceiver % ((self class literalNodeFor: 2) acceptVisitor: methodTranslator)) 
		equals: ((self class literalNodeFor: 0) acceptVisitor: methodTranslator)
]

{ #category : #translation }
IlliciumSmallInteger >> to: stop by: step do: aBlock [
	| node arg receiver | 
	node := self to: stop  do: aBlock.
	
	receiver := ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself.
	arg := step acceptVisitor: methodTranslator.
	arg isLiteral ifTrue: [ arg value = 0 ifTrue: [ BadArgument new result: 0; expected: 'non 0 value' ] ].
	
	node iteratorModification: (receiver assign: (receiver + arg)).
	^ node
]

{ #category : #translation }
IlliciumSmallInteger >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [ self error: 'Wrong number of arguments.' ]
		ifFalse: [ iterID := (aBlock arguments at: 1) acceptVisitor: methodTranslator ].
	"type checking"
	("((methodTranslator getNodeConcreteType: stop) = SmallInteger asTypeReification)
		and:[" aBlock isBlock" ]")
    ifFalse:[ self error: 'An arguments has the wrong type' ].

	^ ASTCFor new
		iteratorDefinition:
			(ASTCVariableDefinition new
				declaration:
					(ASTCVariableDeclaration new
						id: iterID ;
						type:
							(ASTCType new
								type: IlliciumSmallInteger asPharoType;
								yourself);
						yourself);
				init: self translatedReceiver;
				yourself);
		condition:
			(iterID <= (stop acceptVisitor: methodTranslator));
		iteratorModification:
			(iterID preIncr);
		body: (aBlock acceptVisitor: methodTranslator);
		yourself
]
