Class {
	#name : #ANSlangReceiver,
	#superclass : #ASTCKernelClass,
	#instVars : [
		'type'
	],
	#category : #'Angler-Slang-nodes-translators'
}

{ #category : #type }
ANSlangReceiver class >> asCType [
	"Breaks the initial design, but slangs has to deal with unknown types.
	This is therefore imlplemented on the instance side, and the SlangTranslator should return an instance of this class, with type filled with a symbol"
	^ self shouldNotImplement
]

{ #category : #'meta-data' }
ANSlangReceiver class >> slangReservedSelector [
	^ #(#at:put: #negated #bitOr: #raisedTo: #+ #'<<' #asVoidPointer #addressOf: #cCode:inSmalltalk: #asUnsignedLong #asUnsignedIntegerPtr #baseHeaderSize #value:value:value:value:value: #byteSwap32 #or: #bitInvert32 #perform:with:with:with:with:with: #asFloat #inline: #ifNotNil:ifNil: #> #between:and: #asUnsignedLongLong #preDecrement #flag: #preIncrement #whileFalse: #rounded #and: #at: #isNil #perform:with: #* #sharedCodeNamed:inCase: #signedIntFromLong #& #asAddress:put: #truncateTo: #cppIf:ifTrue: #cCode: #shouldBeImplemented #timesRepeat: #'~~' #| #byteSwapped64IfBigEndian: #ifNotNil: #'>>>' #min: #basicAt: #= #asInteger #touch: #bytesPerWord #value #value:value:value:value:value:value: #'\\' #whileTrue: #'>>' #'//' #asLong #signedIntToLong64 #ifNil:ifNotNil: #whileFalse #signedIntToShort #- #value: #maxSmallInteger #ifFalse:ifTrue: #to:by:do: #perform: #asSymbol #bitInvert64 #perform:with:with:with: #cPreprocessorDirective: #shouldNotImplement #bytesPerOop #ifFalse: #bitShift: #bitAnd: #byteSwap64 #asUnsignedInteger #subclassResponsibility #signedIntFromShort #signedBitShift: #noMask: #cCoerce:to: #ifNil: #cCoerceSimple:to: #cppIf:ifTrue:ifFalse: #minSmallInteger #< #integerValueOf: #asIntegerPtr #byteSwapped32IfBigEndian: #'>=' #perform:with:with: #deny: #'<=' #max: #notNil #'==' #not #ifTrue: #ifTrue:ifFalse: #whileTrue #signedIntToLong #value:value:value:value: #repeat #value:value:value: #value:value: #abs #wordSize #allMask: #bitClear: #basicAt:put: #anyMask: #bitXor: #perform:with:with:with:with: #to:do: #addressOf:put: #integerObjectOf: #isIntegerObject: #signedIntFromLong64 #'~=' #/
	
	eassert:)
]

{ #category : #'translation-operators' }
ANSlangReceiver >> % anOperand [
	^ self translatedReceiver % (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ANSlangReceiver >> & anOperand [
	^ self translatedReceiver & (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ANSlangReceiver >> * aNumber [
	"same code as ASTCNumber>>#*"
	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ANSlangReceiver >> + anOperand [
	^ self translatedReceiver + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ANSlangReceiver >> - anOperand [
	^ self translatedReceiver - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ANSlangReceiver >> / anotherObject [
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ANSlangReceiver >> // anotherObject [
	"should not work"
	self flag:#notWorking.
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ANSlangReceiver >> < aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
ANSlangReceiver >> << aNumber [
	"Equivalent to Slang's <<.
	See CCodeGenerator >> #generateShiftLeft:on:indent: for original semantics."
	
	(self tryEvaluateLiteralExpression: receiverNode)
		ifNotNil: [ :value | | castToLong result |
			castToLong := (self tryEvaluateLiteralExpression: aNumber)
				ifNil: [ methodTranslator program wordSize = 8. ]
				ifNotNil: [ :argumentValue | | valueBeyondInt |
					valueBeyondInt := 1 bitShift: 32. "The default type of const << N is int."
					value < valueBeyondInt and: [(value bitShift: argumentValue) >= valueBeyondInt ] ].
			result := (ASTCLiteral value: value).
			castToLong ifTrue: [ result := result castTo: (self cTypeFor: #usqLong) ].
			^ result << (aNumber acceptVisitor: methodTranslator) ].
	
	^ ((self translatedReceiver castTo: (self cTypeFor: #usqInt))
			<< (aNumber acceptVisitor: methodTranslator))
				castTo: (self cTypeFor: self myType)
]

{ #category : #accessing }
ANSlangReceiver >> <= aNumber [
	"same code as ASTCSmallInteger>>#<="
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #testing }
ANSlangReceiver >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedReceiver equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:
			[ ^ super = anotherObject and: [ type = anotherObject type ]]) ]
]

{ #category : #'reflective operations' }
ANSlangReceiver >> == anOperand [
	^ self translatedReceiver equals: (anOperand acceptVisitor: methodTranslator)
]

{ #category : #typing }
ANSlangReceiver >> > aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ANSlangReceiver >> >= aNumber [
	"same as ASTCSmallInteger>>#>="
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
ANSlangReceiver >> >> aNumber [
	^ (self translatedReceiver castTo: (self cTypeFor: #usqInt)) >> (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> \\ something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> addressOf: anExpression [
	^ (anExpression acceptVisitor: methodTranslator) asAddressOf
]

{ #category : #'reflective operations' }
ANSlangReceiver >> addressOf: anExpression put: anAssignmentBlock [
	"Ssecond argument is for simulation purpose, i assume.
	Regardless, it's ignored during translation"
	^ self addressOf: anExpression
]

{ #category : #'reflective operations' }
ANSlangReceiver >> allMask: anOperand [
	| arg |
	arg := anOperand acceptVisitor: methodTranslator.
	^ self translatedReceiver & arg equals: arg
]

{ #category : #typing }
ANSlangReceiver >> and: aBoolean [
	| args |
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
	args := self binarySelectorArgs: aBoolean.
	^ args first && args second
]

{ #category : #'reflective operations' }
ANSlangReceiver >> anyMask: anOperand [
	^ self & anOperand
]

{ #category : #accessing }
ANSlangReceiver >> asCType [
	<deprecated>
	"not sure how this is declared"
	self flag: #deprecated.
	"for API concistency with the initial design. "
	^ type ifNil: [ #sqInt ]
]

{ #category : #typing }
ANSlangReceiver >> asConstraint [
	^ SingleType new type: self; yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> asFloat [
	^ self translatedReceiver castTo: (self cTypeFor: #double)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> asInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #sqInt)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> asUnsignedInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #usqInt)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> asVoidPointer [
	^ self translatedReceiver castTo: (self cTypeFor: #'void *')
]

{ #category : #accessing }
ANSlangReceiver >> at: anExpression [
	^ self translatedReceiver indexAt: (anExpression acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> at: anExpression put: aValue [
	^ (self at: anExpression) assign: (aValue acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> baseHeaderSize [
	^ ASTCIdentifier new id: #BaseHeaderSize
]

{ #category : #'reflective operations' }
ANSlangReceiver >> between: min and: max [
	| receiver minArg maxArg |
	receiver := self translatedReceiver.
	minArg := min acceptVisitor: methodTranslator.
	maxArg := max acceptVisitor: methodTranslator.
	^ (receiver >= minArg) && (receiver <= maxArg)
]

{ #category : #accessing }
ANSlangReceiver >> binarySelectorArgs: aBoolean [
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
ANSlangReceiver >> bitAnd: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver & (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bitClear: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bitInvert64 [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bitOr: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver | (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bitShift: anIndex [
	| translatedArg translatedReceiver |
	translatedReceiver := self translatedReceiver.
	(self tryEvaluateLiteralExpression: anIndex)
		ifNotNil: [ :evaluation | | shiftValue |
			"bit shift amount is a constant"
			shiftValue := ASTCLiteral value: evaluation.
			^ evaluation < 0
				ifTrue: [ (translatedReceiver castTo: (self cTypeFor: #usqInt)) >> shiftValue negated ]
				ifFalse: [ (translatedReceiver castTo: (self cTypeFor: #usqInt)) << shiftValue ] ].

	"bit shift amount is an expression"
	translatedArg := anIndex acceptVisitor: methodTranslator.
	^ translatedArg < (ASTCLiteral value: 0)
		then: (translatedReceiver castTo: (self cTypeFor: #usqInt)) >> translatedArg negated
		else: (translatedReceiver castTo: (self cTypeFor: #usqInt)) << translatedArg
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bitXor: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver bitXor: (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> byteSwap32 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_4_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> byteSwap64 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_8_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bytesPerOop [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerOop
]

{ #category : #'reflective operations' }
ANSlangReceiver >> bytesPerWord [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerWord
]

{ #category : #'reflective operations' }
ANSlangReceiver >> cCode: aStringOrBlock [

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
ANSlangReceiver >> cCode: aString inSmalltalk: ignoredBlock [
	^ self cCode: aString
]

{ #category : #typing }
ANSlangReceiver >> cCoerce: aVariable to: aType [
	"a type is a string literal in slang case"
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (self cTypeFor: aType)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> cCoerceSimple: e to: er [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> cTypeFor: aSymbol [
	^ ASTCType new 
		type: (self class new type: aSymbol value ; yourself) asConstraint;
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> cppIf: aPredicate ifTrue: trueBlock [
	^ self cppIf: aPredicate ifTrue: trueBlock ifFalse: nil
]

{ #category : #'reflective operations' }
ANSlangReceiver >> cppIf: aPredicate ifTrue: trueBlock ifFalse: falseBlock [
	| res |
	res := ASTCPreprocessorIf new
		condition: (aPredicate acceptVisitor: methodTranslator).
	res then addAll: ((trueBlock acceptVisitor: methodTranslator) statements collect: #expression).
	falseBlock ifNotNil: [ res else addAll: ((falseBlock acceptVisitor: methodTranslator) statements collect: #expression) ].
	^ res
]

{ #category : #'reflective operations' }
ANSlangReceiver >> deny: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal]. 
	
	^ (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (ASTCFormatHelper formatSelector: aMessage selector); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> eassert: aBlock [
	^	ASTCFunctionCall new
		id: (ASTCIdentifier new id: #eassert);
		addArgument: (self inlineBlock: aBlock) expression;
		yourself
]

{ #category : #accessing }
ANSlangReceiver >> ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition: self translatedReceiver not;
		then: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifFalse: stuff ifTrue: estuff [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'translation-testing' }
ANSlangReceiver >> ifNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver not;
		then: (aBlock acceptVisitor: methodTranslator)
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifNil: aNilBlock ifNotNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver not;
		then: (aNilBlock acceptVisitor: methodTranslator);
		else: (aBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifNotNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver;
		then: (aBlock acceptVisitor: methodTranslator)
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifTrue: trueBlock ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
 	^ self ifTrueIfFalseKindOfMessages: { trueBlock. falseBlock }
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifTrueIfFalseExpression: args [
	args do: [:aBlock| aBlock statements size ~= 1 
		ifTrue: [ self error: 'Cannot translate into ternary operator if it has more than one statements yet' ] ].
	
	^ ASTCTernaryConditionalOperator new
		addOperand: self translatedReceiver;
		addOperand: (self inlineBlock: args first);
		addOperand: (args size = 2 ifTrue: [ (self inlineBlock: args second) ]); "else nil"
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifTrueIfFalseKindOfMessages: args [
	^ self receiverNode parent parent isSequence
		ifTrue: [ self ifTrueIfFalseStatement: args ]
		ifFalse: [ self ifTrueIfFalseExpression: args. ]
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ifTrueIfFalseStatement: args [
	^ ASTCIf new
		condition: self translatedReceiver;
		then: (args first acceptVisitor: self visitor);
		else: (args size = 2 ifTrue: [ args second acceptVisitor: self visitor]);
		yourself.
]

{ #category : #'translation-helper' }
ANSlangReceiver >> inlineBlock: aBlock [
	| resBlock |
	aBlock statements size = 1 
		ifFalse: [ UnsupportedFeature new feature: 'Cannot inline a block if it has more than one statement yet' ].
	
	resBlock := (aBlock acceptVisitor: methodTranslator).
	
	resBlock statements size = 1 
		ifFalse:[ UnsupportedFeature new feature: 'Cannot inline a block which translates into more than one statement yet' ].
	^ resBlock statements first expression
]

{ #category : #'reflective operations' }
ANSlangReceiver >> integerObjectOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #integerObjectOf ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> integerValueOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ (anOop acceptVisitor: methodTranslator) >> (ASTCLiteral value: 3)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> isIntegerObject: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #isIntegerObject ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> isNil [
	^ self translatedReceiver equals: (ASTCLiteral value: #null)
]

{ #category : #accessing }
ANSlangReceiver >> literalNodeFor: aValue [ 
	^ aValue asLiteralNode 
		propertyAt: ASTCTypeAnnotator property 
		put: (self asConstraint -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #'reflective operations' }
ANSlangReceiver >> max: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: arg
		else: translatedReceiver
]

{ #category : #'reflective operations' }
ANSlangReceiver >> min: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: translatedReceiver
		else: arg
]

{ #category : #'reflective operations' }
ANSlangReceiver >> negated [
	^ self translatedReceiver negated
]

{ #category : #typing }
ANSlangReceiver >> new [
	"very hacky way to 'create' a 'new' instance of the recever... Should not stay that way."
	self flag: #hack.
	^ self

]

{ #category : #'reflective operations' }
ANSlangReceiver >> noMask: anOperand [
	^ (self translatedReceiver & (anOperand acceptVisitor: methodTranslator)) equals: (ASTCLiteral value: 0)
]

{ #category : #accessing }
ANSlangReceiver >> not [
	^ self translatedReceiver not
]

{ #category : #'reflective operations' }
ANSlangReceiver >> notNil [
	^ self translatedReceiver notEquals: (ASTCLiteral value: #null)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> or: aBoolean [
	| args |
	"same code as ASTCBoolean>>#or:"
	args := self binarySelectorArgs: aBoolean.
	^ args first || args second
]

{ #category : #'reflective operations' }
ANSlangReceiver >> printString [
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
ANSlangReceiver >> repeat [
	"example available in Spur64BitMemoryManager>>accessibleObjectAfter:"
	"basically, a while true without break"
	| body |
	body := ASTCBlock new.
	receiverNode statements collect: [:aStatement| (aStatement acceptVisitor: methodTranslator) asStatement ] into: body statements.
	
	^ ASTCWhile new
		condition: ((self literalNodeFor: true) acceptVisitor: methodTranslator);
		body: body;
		yourself
]

{ #category : #'reflective operations' }
ANSlangReceiver >> signedIntFromLong64 [
	
	^ self translatedReceiver castTo: (self cTypeFor: #sqLong)
]

{ #category : #'reflective operations' }
ANSlangReceiver >> to: stop by: step do: aBlock [
	| node arg receiver | 
	node := self to: stop  do: aBlock.
	
	receiver := ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself.
	arg := step acceptVisitor: methodTranslator.
	arg isLiteral ifTrue: [ arg value = 0 ifTrue: [ BadArgument new result: 0; expected: 'non 0 value' ] ].
	
	node iteratorModification: (receiver assign: (receiver assignAndAdd: arg)).
	^ node
]

{ #category : #'reflective operations' }
ANSlangReceiver >> to: stop do: aBlock [
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
ANSlangReceiver >> touch: something [
	"does not do appear in translation"
	^ ASTCEmptyStatement new
]

{ #category : #'reflective operations' }
ANSlangReceiver >> tryEvaluateLiteralExpression: anExpression [

	^ ANSlangConstantEvaluator new
		program: methodTranslator program;
		evaluate: anExpression
		ifNonValueDo: [ nil ]
]

{ #category : #accessing }
ANSlangReceiver >> type [
	^ type
]

{ #category : #accessing }
ANSlangReceiver >> type: aType [
	type := aType
]

{ #category : #'reflective operations' }
ANSlangReceiver >> value: somethong [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> value: somethong value: bidule [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> whileFalse: something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ANSlangReceiver >> whileTrue [
	"a whileTrue is rewritten in slang to have an if using the latest statement of the block"
	| whileStatement |
	whileStatement := self repeat.
	
	whileStatement body addStatement: (ASTCIf new
		condition: whileStatement body statements removeLast expression not;
		then: ASTCBreak new;
		else: nil;
		yourself).
	
	^ whileStatement
]

{ #category : #'reflective operations' }
ANSlangReceiver >> whileTrue: aBlock [
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement body addStatement: (aBlock acceptVisitor: methodTranslator).
	^ whileStatement
]

{ #category : #'reflective operations' }
ANSlangReceiver >> wordSize [
	^ self bytesPerWord
]

{ #category : #accessing }
ANSlangReceiver >> | aBool [
	^ self translatedReceiver | (aBool acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ANSlangReceiver >> ~= anotherObject [
	"if weird behavior, it's probably because it's not in the right context."
	"this is only defined for translation, so if it's use for receiver equality, it won't work."
	^ self translatedReceiver notEquals: (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #'reflective operations' }
ANSlangReceiver >> ~~ something [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]
