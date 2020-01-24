Class {
	#name : #ASTCSlangReceiver,
	#superclass : #ASTCKernelClass,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCSlangReceiver class >> asCType [
	"Breaks the initial design, but slangs has to deal with unknown types.
	This is therefore imlplemented on the instance side, and the SlangTranslator should return an instance of this class, with type filled with a symbol"
	^ self shouldNotImplement
]

{ #category : #'meta-data' }
ASTCSlangReceiver class >> slangReservedSelector [
	^ #(#at:put: #negated #bitOr: #raisedTo: #+ #'<<' #asVoidPointer #addressOf: #cCode:inSmalltalk: #asUnsignedLong #asUnsignedIntegerPtr #baseHeaderSize #value:value:value:value:value: #byteSwap32 #or: #bitInvert32 #perform:with:with:with:with:with: #asFloat #inline: #ifNotNil:ifNil: #> #between:and: #asUnsignedLongLong #preDecrement #flag: #preIncrement #whileFalse: #rounded #and: #at: #isNil #perform:with: #* #sharedCodeNamed:inCase: #signedIntFromLong #& #asAddress:put: #truncateTo: #cppIf:ifTrue: #cCode: #shouldBeImplemented #timesRepeat: #'~~' #| #byteSwapped64IfBigEndian: #ifNotNil: #'>>>' #min: #basicAt: #= #asInteger #touch: #bytesPerWord #value #value:value:value:value:value:value: #'\\' #whileTrue: #'>>' #'//' #asLong #signedIntToLong64 #ifNil:ifNotNil: #whileFalse #signedIntToShort #- #value: #maxSmallInteger #ifFalse:ifTrue: #to:by:do: #perform: #asSymbol #bitInvert64 #perform:with:with:with: #cPreprocessorDirective: #shouldNotImplement #bytesPerOop #ifFalse: #bitShift: #bitAnd: #byteSwap64 #asUnsignedInteger #subclassResponsibility #signedIntFromShort #signedBitShift: #noMask: #cCoerce:to: #ifNil: #cCoerceSimple:to: #cppIf:ifTrue:ifFalse: #minSmallInteger #< #integerValueOf: #asIntegerPtr #byteSwapped32IfBigEndian: #'>=' #perform:with:with: #deny: #'<=' #max: #notNil #'==' #not #ifTrue: #ifTrue:ifFalse: #whileTrue #signedIntToLong #value:value:value:value: #repeat #value:value:value: #value:value: #abs #wordSize #allMask: #bitClear: #basicAt:put: #anyMask: #bitXor: #perform:with:with:with:with: #to:do: #addressOf:put: #integerObjectOf: #isIntegerObject: #signedIntFromLong64 #'~=' #/
	
	eassert:)
]

{ #category : #accessing }
ASTCSlangReceiver >> * aNumber [
	"same code as ASTCNumber>>#*"
	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ASTCSlangReceiver >> + anOperand [
	^ self translatedReceiver + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ASTCSlangReceiver >> - anOperand [
	^ self translatedReceiver - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> / anotherObject [
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ASTCSlangReceiver >> // anotherObject [
	"should not work"
	self flag:#notWorking.
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ASTCSlangReceiver >> < aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
ASTCSlangReceiver >> << aNumber [
	^ self translatedReceiver << (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> <= aNumber [
	"same code as ASTCSmallInteger>>#<="
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #testing }
ASTCSlangReceiver >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedReceiver equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:
			[ ^ super = anotherObject and: [ type = anotherObject type ]]) ]
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> == pouet [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #typing }
ASTCSlangReceiver >> > aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> >= aNumber [
	"same as ASTCSmallInteger>>#>="
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
ASTCSlangReceiver >> >> aNumber [
	^ self translatedReceiver >> (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> \\ something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> addressOf: anExpression [
	^ (anExpression acceptVisitor: methodTranslator) asAddressOf
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> addressOf: anExpression put: anAssignmentBlock [
	"Ssecond argument is for simulation purpose, i assume.
	Regardless, it's ignored during translation"
	^ self addressOf: anExpression
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> allMask: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #typing }
ASTCSlangReceiver >> and: aBoolean [
	| args |
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
	args := self binarySelectorArgs: aBoolean.
	^ args first && args second
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> anyMask: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> asCType [
	<deprecated>
	"not sure how this is declared"
	self flag: #deprecated.
	"for API concistency with the initial design. "
	^ type ifNil: [ #sqInt ]
]

{ #category : #typing }
ASTCSlangReceiver >> asConstraint [
	^ SingleType new type: self; yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> asFloat [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> asInteger [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> asUnsignedInteger [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> asVoidPointer [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> at: anExpression [
	^ self translatedReceiver indexAt: (anExpression acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> at: something put: pouet [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> baseHeaderSize [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> between: min and: max [
	| receiver minArg maxArg |
	receiver := self translatedReceiver.
	minArg := min acceptVisitor: methodTranslator.
	maxArg := max acceptVisitor: methodTranslator.
	^ (receiver >= minArg) && (receiver <= maxArg)
]

{ #category : #accessing }
ASTCSlangReceiver >> binarySelectorArgs: aBoolean [
	| firstOperand secondOperand |
	firstOperand := receiverNode isBlock
		ifTrue: [ receiverNode statements size = 1
				ifTrue: [ receiverNode statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ receiverNode acceptVisitor: methodTranslator ].
	secondOperand := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	^ { firstOperand. secondOperand }
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitAnd: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver & (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitClear: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitInvert64 [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitOr: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver | (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitShift: pouet [
	self flag: #undone. "want to see how slang translates it first."
	"More complicated than planned, it evaluates constants first, and change the sign of the bitshift if needeed."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bitXor: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver bitXor: (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> byteSwap32 [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> byteSwap64 [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> bytesPerOop [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cCode: aStringOrBlock [

	aStringOrBlock isBlock
		ifTrue: [ 
			^ (self inlineBlock: aStringOrBlock) ].
	aStringOrBlock isLiteralNode
		ifTrue: [ 
			^ aStringOrBlock value isEmpty 
				ifTrue:[ ASTCEmptyStatement new ]
				ifFalse: [ ASTCRawCCode new cCode: aStringOrBlock value; yourself ]].
	self error
	"I don't know if there is sometimes other stuff"
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cCode: aString inSmalltalk: ignoredBlock [
	^ self cCode: aString
]

{ #category : #typing }
ASTCSlangReceiver >> cCoerce: aVariable to: aType [
	"a type is a string literal in slang case"
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (ASTCType new type: (self class new type: aType value ; yourself) asConstraint; yourself)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cCoerceSimple: e to: er [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cppIf: aPredicate ifTrue: trueBlock [
	^ self cppIf: aPredicate ifTrue: trueBlock ifFalse: nil
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cppIf: aPredicate ifTrue: trueBlock ifFalse: falseBlock [
	| res |
	res := ASTCPreprocessorIf new
		condition: (aPredicate acceptVisitor: methodTranslator).
	res then addAll: ((trueBlock acceptVisitor: methodTranslator) statements collect: #expression).
	falseBlock ifNotNil: [ res else addAll: ((falseBlock acceptVisitor: methodTranslator) statements collect: #expression) ].
	^ res
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> deny: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal]. 
	
	^ (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (ASTCFormatHelper formatSelector: aMessage selector); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> eassert: aBlock [
	^	ASTCFunctionCall new
		id: (ASTCIdentifier new id: #eassert);
		addArgument: (self inlineBlock: aBlock) expression;
		yourself
]

{ #category : #accessing }
ASTCSlangReceiver >> ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition: self translatedReceiver not;
		then: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifFalse: stuff ifTrue: estuff [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'translation-testing' }
ASTCSlangReceiver >> ifNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver not;
		then: (aBlock acceptVisitor: methodTranslator)
		yourself.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifNil: ear ifNotNil: inge [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifNotNil: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrue: trueBlock ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
 	^ self ifTrueIfFalseKindOfMessages: { trueBlock. falseBlock }
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrueIfFalseExpression: args [
	args do: [:aBlock| aBlock statements size ~= 1 
		ifTrue: [ self error: 'Cannot translate into ternary operator if it has more than one statements yet' ] ].
	
	^ ASTCTernaryConditionalOperator new
		addOperand: self translatedReceiver;
		addOperand: (self inlineBlock: args first) expression;
		addOperand: (args size = 2 ifTrue: [ (self inlineBlock: args second) expression ]); "else nil"
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrueIfFalseKindOfMessages: args [
	^ self receiverNode parent parent isSequence
		ifTrue: [ self ifTrueIfFalseStatement: args ]
		ifFalse: [ self ifTrueIfFalseExpression: args. ]
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrueIfFalseStatement: args [
	^ ASTCIf new
		condition: self translatedReceiver;
		then: (args first acceptVisitor: self visitor);
		else: (args size = 2 ifTrue: [ args second acceptVisitor: self visitor]);
		yourself.
]

{ #category : #'translation-helper' }
ASTCSlangReceiver >> inlineBlock: aBlock [
	| resBlock |
	aBlock statements size = 1 
		ifFalse: [ UnsupportedFeature new feature: 'Cannot inline a block if it has more than one statement yet' ].
	
	resBlock := (aBlock acceptVisitor: methodTranslator).
	
	resBlock statements size = 1 
		ifFalse:[ UnsupportedFeature new feature: 'Cannot inline a block which translates into more than one statement yet' ].
	^ resBlock statements first
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> integerObjectOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #integerObjectOf ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> integerValueOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #integerValueOf ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> isIntegerObject: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #isIntegerObject ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> isNil [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> literalNodeFor: aValue [ 
	^ aValue asLiteralNode 
		propertyAt: ASTCTypeAnnotator property 
		put: (self asConstraint -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> max: anInt [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> min: anInt [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> negated [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #typing }
ASTCSlangReceiver >> new [
	"very hacky way to 'create' a 'new' instance of the recever... Should not stay that way."
	self flag: #hack.
	^ self

]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> noMask: stuff [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> not [
	^ self translatedReceiver not
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> notNil [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> or: aBoolean [
	| args |
	"same code as ASTCBoolean>>#or:"
	args := self binarySelectorArgs: aBoolean.
	^ args first || args second
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< receiverNode printString
			<< '-';
			print: self asCType;
			<<')'.
		].
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> repeat [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> signedIntFromLong64 [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> to: s by: e do: i [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [ self error: 'Wrong number of arguments.' ]
		ifFalse: [ iterID := (aBlock arguments at: 1) acceptVisitor: methodTranslator ].
	"type checking"

	"(((methodTranslator getNodeTranslationType: stop) = ASTCSmallInteger asTypeReification )
		and:[ aBlock isBlock ])
    ifFalse:[ self error: 'An arguments has the wrong type' ]."
	^ ASTCFor new
		iteratorDefinition:
			(iterID assign: self translatedReceiver);
		condition:
			(iterID <= (stop acceptVisitor: methodTranslator));
		iteratorModification:
			(iterID assignAndAdd: (ASTCLiteral value: 1));
		body: (aBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> touch: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> type [
	^ type
]

{ #category : #accessing }
ASTCSlangReceiver >> type: aType [
	type := aType
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> value: somethong value: bidule [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> whileFalse: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> whileTrue [
	| body |
	body := ASTCBlock new.
	receiverNode statements collect: [:aStatement| (aStatement acceptVisitor: methodTranslator) asStatement ] into: body statements.

	body addStatement: (ASTCIf new
		condition: body statements removeLast expression not;
		then: ASTCBreak new;
		else: nil;
		yourself).
	
	^ ASTCWhile new
		condition: ((self literalNodeFor: true) acceptVisitor: methodTranslator);
		body: body;
		yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> whileTrue: aBlock [
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement body addStatement: (aBlock acceptVisitor: methodTranslator).
	^ whileStatement
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> wordSize [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #accessing }
ASTCSlangReceiver >> | aBool [
	^ self translatedReceiver | (aBool acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ASTCSlangReceiver >> ~= anotherObject [
	"if weird behavior, it's probably because it's not in the right context."
	"this is only defined for translation, so if it's use for receiver equality, it won't work."
	^ self translatedReceiver notEquals: (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ~~ something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]
