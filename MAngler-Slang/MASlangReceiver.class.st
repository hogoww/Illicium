Class {
	#name : #MASlangReceiver,
	#superclass : #MAAbstractSlangReceiver,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #type }
MASlangReceiver class >> asCType [
	"Breaks the initial design, but slangs has to deal with unknown types.
	This is therefore imlplemented on the instance side, and the SlangTranslator should return an instance of this class, with type filled with a symbol"
	^ self shouldNotImplement
]

{ #category : #'meta-data' }
MASlangReceiver class >> slangReservedSelector [
	^ #(#at:put: #negated #bitOr: #raisedTo: #+ #'<<' #asVoidPointer #addressOf: #cCode:inSmalltalk: #asUnsignedLong #asUnsignedIntegerPtr #baseHeaderSize #value:value:value:value:value: #byteSwap32 #or: #bitInvert32 #perform:with:with:with:with:with: #asFloat #inline: #ifNotNil:ifNil: #> #between:and: #asUnsignedLongLong #preDecrement #flag: #preIncrement #whileFalse: #rounded #and: #at: #isNil #perform:with: #* #sharedCodeNamed:inCase: #signedIntFromLong #& #asAddress:put: #truncateTo: #cppIf:ifTrue: #cCode: #shouldBeImplemented #timesRepeat: #'~~' #| #byteSwapped64IfBigEndian: #ifNotNil: #'>>>' #min: #basicAt: #= #asInteger #touch: #bytesPerWord #value #value:value:value:value:value:value: #'\\' #whileTrue: #'>>' #'//' #asLong #signedIntToLong64 #ifNil:ifNotNil: #whileFalse #signedIntToShort #- #value: #maxSmallInteger #ifFalse:ifTrue: #to:by:do: #perform: #asSymbol #bitInvert64 #perform:with:with:with: #cPreprocessorDirective: #shouldNotImplement #bytesPerOop #ifFalse: #bitShift: #bitAnd: #byteSwap64 #asUnsignedInteger #subclassResponsibility #signedIntFromShort #signedBitShift: #noMask: #cCoerce:to: #ifNil: #cCoerceSimple:to: #cppIf:ifTrue:ifFalse: #minSmallInteger #< #integerValueOf: #asIntegerPtr #byteSwapped32IfBigEndian: #'>=' #perform:with:with: #deny: #'<=' #max: #notNil #'==' #not #ifTrue: #ifTrue:ifFalse: #whileTrue #signedIntToLong #value:value:value:value: #repeat #value:value:value: #value:value: #abs #wordSize #allMask: #bitClear: #basicAt:put: #anyMask: #bitXor: #perform:with:with:with:with: #to:do: #addressOf:put: #integerObjectOf: #isIntegerObject: #signedIntFromLong64 #'~=' #/
	
	eassert:
	caseOf: caseOf:otherwise: dispatchOn:in: "caseOf and co. is parsed in a specific way in TAST which we don't. It therefore has to be an exception"
	) 
]

{ #category : #'translation-operators' }
MASlangReceiver >> % anOperand [
	^ self translatedReceiver % (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> & anOperand [
	^ self translatedReceiver & (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> * aNumber [
	"same code as ASTCNumber>>#*"
	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> - anOperand [
	^ self translatedReceiver - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> / anotherObject [
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #'translation-operators' }
MASlangReceiver >> // anInteger [
	"same as #/ in slang"
	^ self / anInteger
]

{ #category : #'translation-operators' }
MASlangReceiver >> < aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> << aNumber [
	"Equivalent to Slang's <<.
	See CCodeGenerator >> #generateShiftLeft:on:indent: for original semantics."
	
	(self tryEvaluateLiteralExpression: receiverNode)
		ifNotNil: [ :value | | castToLong result |
			castToLong := (self tryEvaluateLiteralExpression: aNumber)
				ifNil: [ methodTranslator program wordSize = 8. ]
				ifNotNil: [ :argumentValue | | valueBeyondInt |
					valueBeyondInt := 1 bitShift: 32. "The default type of const << N is int."
					value < valueBeyondInt and: [(value bitShift: argumentValue) >= valueBeyondInt ] ].
			result := self translatedReceiver.
			castToLong ifTrue: [ result := result castTo: (self cTypeFor: #usqLong) ].
			^ result << (aNumber acceptVisitor: methodTranslator) ].
	
	^ ((self translatedReceiver castTo: (self cTypeFor: #usqInt))
			<< (aNumber acceptVisitor: methodTranslator))
				castTo: (self cTypeFor: self myType type)
]

{ #category : #'translation-operators' }
MASlangReceiver >> <= aNumber [
	"same code as ASTCSmallInteger>>#<="
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> > aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> >= aNumber [
	"same as ASTCSmallInteger>>#>="
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> >> aNumber [
	^ (self translatedReceiver castTo: (self cTypeFor: #usqInt)) >> (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> >>> shiftAmount [
	self flag: #badApprox. "see CCodeGenerator >> generateSignedShiftRight:on:indent: "
	^ self translatedReceiver castTo: (self cTypeFor: #sqLong)
]

{ #category : #'translation-operators' }
MASlangReceiver >> \\ anInteger [
	"same as #% in slang"
	^ self & anInteger
]

{ #category : #'translation-keyword' }
MASlangReceiver >> abs [
	| strippedType funcName |
	"Duplicated code from slang."
	strippedType := type type.
		
	funcName := 
		(#(	('long long' llabs) ('__int64' #llabs) ('int64_t' #llabs)
			(sqInt SQABS)
			(sqLong SQLABS)
			(double fabs)
			(float fabsf))
				detect: [:tuple| strippedType beginsWith: tuple first]
				ifNone: [])
			ifNotNil: [:tuple| tuple last]
			ifNil: [#abs].
			
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: funcName ; yourself) ;
		arguments: { self translatedReceiver };
		yourself

]

{ #category : #'translation-keyword' }
MASlangReceiver >> addressOf: anExpression [
	^ (anExpression acceptVisitor: methodTranslator) asAddressOf
]

{ #category : #'translation-keyword' }
MASlangReceiver >> addressOf: anExpression put: anAssignmentBlock [
	"Ssecond argument is for simulation purpose, i assume.
	Regardless, it's ignored during translation"
	^ self addressOf: anExpression
]

{ #category : #'translation-keyword' }
MASlangReceiver >> allMask: anOperand [
	| arg |
	arg := anOperand acceptVisitor: methodTranslator.
	^ self translatedReceiver & arg equals: arg
]

{ #category : #'translation-keyword' }
MASlangReceiver >> and: aBoolean [
	^ self translatedReceiver && (aBoolean acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> anyMask: anOperand [
	^ self & anOperand
]

{ #category : #'translation-keyword' }
MASlangReceiver >> asFloat [
	^ self translatedReceiver castTo: (self cTypeFor: #double)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> asInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #sqInt)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> asUnsignedIntegerPtr [
	^ self translatedReceiver castTo: (self cTypeFor: #usqIntptr_t)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> asVoidPointer [
	^ self translatedReceiver castTo: (self cTypeFor: #'void *')
]

{ #category : #'translation-keyword' }
MASlangReceiver >> baseHeaderSize [
	^ ASTCIdentifier new id: #BaseHeaderSize
]

{ #category : #'translation-keyword' }
MASlangReceiver >> between: min and: max [
	| receiver minArg maxArg |
	receiver := self translatedReceiver.
	minArg := min acceptVisitor: methodTranslator.
	maxArg := max acceptVisitor: methodTranslator.
	^ (receiver >= minArg) && (receiver <= maxArg)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bitAnd: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver & (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bitClear: aMask [
	^ (self bitOr: aMask) - (aMask acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bitInvert64 [
	self flag:#missingCheck. 
	"I'm assuming i'm always in 64 currently,
	see generateBitInvert: msgNode on: aStream indent: level"
	^ self translatedReceiver castTo: (self cTypeFor: #usqIntptr_t).
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bitOr: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver | (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bitShift: anIndex [
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

{ #category : #'translation-keyword' }
MASlangReceiver >> bitXor: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver bitXor: (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> byteSwap32 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_4_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'translation-keyword' }
MASlangReceiver >> byteSwap64 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_8_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'translation-keyword' }
MASlangReceiver >> byteSwapped32IfBigEndian: anInteger [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_4_BYTES_IF_BIGENDIAN) ;
		arguments: { anInteger acceptVisitor: methodTranslator };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> byteSwapped64IfBigEndian: anInteger [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_8_BYTES_IF_BIGENDIAN) ;
		arguments: { anInteger acceptVisitor: methodTranslator };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bytesPerOop [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerOop
]

{ #category : #'translation-keyword' }
MASlangReceiver >> bytesPerWord [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerWord
]

{ #category : #'translation-keyword' }
MASlangReceiver >> cCode: aStringOrBlock [

	aStringOrBlock isBlock
		ifTrue: [ 
			^ aStringOrBlock acceptVisitor: methodTranslator ].
	aStringOrBlock isLiteralNode
		ifTrue: [ 
			^ aStringOrBlock value isEmpty 
				ifTrue:[ ASTCEmptyStatement new ]
				ifFalse: [ ASTCRawCCode new cCode: aStringOrBlock value; yourself ]].
	self error
	"I don't know if there is sometimes other stuff"
]

{ #category : #'translation-keyword' }
MASlangReceiver >> cCode: aString inSmalltalk: ignoredBlock [
	^ self cCode: aString
]

{ #category : #typing }
MASlangReceiver >> cCoerce: aVariable to: aType [
	"a type is a string literal in slang case"
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (self cTypeFor: aType)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> cCoerceSimple: aVariable to: aType [
	^ self cCoerce: aVariable to: aType
]

{ #category : #'translation-keyword' }
MASlangReceiver >> caseOf: anArrayNode [
	^ self caseOf: anArrayNode otherwise: nil
]

{ #category : #'translation-keyword' }
MASlangReceiver >> caseOf: anArrayNode otherwise: defaultCase [
	| switchNode |
	switchNode := ASTCSwitch new.
	
	switchNode expression: self translatedReceiver.
	
	anArrayNode statements do:[ :aCase |  
			| expression body |
			expression := aCase receiver acceptVisitor: methodTranslator.
			aCase arguments size = 1 
				ifFalse: [ ArgumentsCountMismatch new calledArgumentsCount: aCase arguments size; expectedArgumentsCount: 1 ; yourself ].
			body := aCase arguments first acceptVisitor: methodTranslator.
			body addStatement: ASTCBreak new.
			switchNode addCase:
				(ASTCSwitchCase new 
					expression: expression; 
					body: body;
					pharoNode: aCase;
					yourself).
		].
	
	switchNode default: (defaultCase ifNotNil: [ defaultCase acceptVisitor: methodTranslator ]).
	
	^ switchNode
]

{ #category : #'translation-keyword' }
MASlangReceiver >> cppIf: aPredicate ifTrue: trueBlock [
	^ self cppIf: aPredicate ifTrue: trueBlock ifFalse: nil
]

{ #category : #'translation-keyword' }
MASlangReceiver >> cppIf: aPredicate ifTrue: trueBlock ifFalse: falseBlock [
	| res |
	res := ASTCPreprocessorIf new
		condition: (aPredicate acceptVisitor: methodTranslator).
	res then addAll: (trueBlock acceptVisitor: methodTranslator) statements.
	falseBlock ifNotNil: [ res else addAll: (falseBlock acceptVisitor: methodTranslator) statements].
	^ res
]

{ #category : #'translation-keyword' }
MASlangReceiver >> deny: something [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #deny:
]

{ #category : #'translation-keyword' }
MASlangReceiver >> dispatchOn: anExpression in: aGlobalNode [
	| switchNode methods |
	"translation tailor made for StackInterpreter >> interpret, may not fit other version/usages"
	switchNode := ASTCSwitch new.
	switchNode expression: (anExpression acceptVisitor: methodTranslator).
	methods := aGlobalNode resolveBinding.
	
	(1 to: methods size) collect:[ :bytecodeNumber |
			| body |
			body := ASTCBlock new.
			
			body addStatement: (self asFunctionCall: (methods at: bytecodeNumber)) asStatement.
			body addStatement: ASTCBreak new.
			
			ASTCSwitchCase new
				expression: (ASTCLiteral new value: bytecodeNumber ; yourself);
				body: body;
				yourself.
		] into: switchNode cases.
	^ switchNode
]

{ #category : #'translation-keyword' }
MASlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal ]. 
	
	(methodTranslator methodFor: aMessage selector) 
		ifNotNil: [ :aMethod | aMethod isCMacroDefine ifTrue: [ ^ ASTCIdentifier new id: aMessage selector ; yourself ] ].
	^ self asFunctionCall: aMessage selector withArguments: aMessage arguments
]

{ #category : #'translation-keyword' }
MASlangReceiver >> eassert: aBlock [
	^	ASTCFunctionCall new
		id: (ASTCIdentifier new id: #eassert);
		addArgument: (aBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> flag: anArgument [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #flag); yourself) ;
		arguments: {ASTCLiteral value: anArgument value asString};
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	| ifNode |
	ifNode := self ifTrue: falseBlock.
	ifNode condition: ifNode condition not.
	^ ifNode
]

{ #category : #'translation-keyword' }
MASlangReceiver >> ifFalse: falseBlock ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	| ifNode |
	ifNode := self ifTrue: falseBlock ifFalse: trueBlock.
	ifNode condition: ifNode condition not.
	^ ifNode
]

{ #category : #'translation-keyword' }
MASlangReceiver >> ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: methodTranslator);
		yourself.
]

{ #category : #'translation-keyword' }
MASlangReceiver >> ifTrue: trueBlock ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: methodTranslator);
		else: (falseBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> integerObjectOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #integerObjectOf ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> integerValueOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ (anOop acceptVisitor: methodTranslator) >> (ASTCLiteral value: 3)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> isIntegerObject: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #isIntegerObject ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> isStrict [
	^ methodTranslator isStrict
]

{ #category : #utility }
MASlangReceiver >> literalNodeFor: aValue [ 
	^ aValue asLiteralNode 
		propertyAt: FATypeAnnotator propertyName 
		put: (self asConstraint -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #'translation-keyword' }
MASlangReceiver >> max: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: arg
		else: translatedReceiver
]

{ #category : #'translation-keyword' }
MASlangReceiver >> maxSmallInteger [
	^ ASTCIdentifier new id: #MaxSmallInteger ; yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> min: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: translatedReceiver
		else: arg
]

{ #category : #'translation-keyword' }
MASlangReceiver >> minSmallInteger [
	^ ASTCIdentifier new id: #MinSmallInteger ; yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> negated [
	^ self translatedReceiver negated
]

{ #category : #'translation-keyword' }
MASlangReceiver >> noMask: anOperand [
	^ (self translatedReceiver & (anOperand acceptVisitor: methodTranslator)) equals: (ASTCLiteral value: 0)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> not [
	^ self translatedReceiver not
]

{ #category : #'translation-keyword' }
MASlangReceiver >> or: aBoolean [
	^ self translatedReceiver || (aBoolean acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> perform: aSelector [
	^ self perform: aSelector with: { }
]

{ #category : #'translation-keyword' }
MASlangReceiver >> perform: aSelector with: arguments [
	"Not used correctly in slang :')"
	| args |
	args := arguments isCollection ifTrue:[ arguments ] ifFalse: [ { arguments } ].
	^ ASTCFunctionCall new 
		id:(aSelector acceptVisitor: methodTranslator);
		arguments: (args collect: [ :anArg | anArg acceptVisitor: methodTranslator ]);
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> preIncrement [
	^ self translatedReceiver preIncr
]

{ #category : #'translation-keyword' }
MASlangReceiver >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< receiverNode printString
			<< '-';
			print: self asCType;
			<<')'.
		].
]

{ #category : #'translation-keyword' }
MASlangReceiver >> repeat [
	"example available in Spur64BitMemoryManager>>accessibleObjectAfter:"
	"basically, a while true without break"
	| body |
	body := ASTCBlock new.
	receiverNode statements do: [:aStatement| body addStatement: (aStatement acceptVisitor: methodTranslator) asStatement ].
	
	^ ASTCWhile new
		condition: ((self literalNodeFor: true) acceptVisitor: methodTranslator);
		body: body;
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> rounded [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #round); yourself) ;
		arguments: { self translatedReceiver };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> shouldBeImplemented [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #error); yourself) ;
		arguments: { ASTCLiteral value: #shouldBeImplemented };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> shouldNotImplement [ 
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #error); yourself) ;
		arguments: { ASTCLiteral value: 'shouldNotImplement' };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> signedBitShift: anInt [
	self flag:#WRONG. "just so we can try to compile the VM"
	^ self translatedReceiver >> (anInt acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> signedIntFromLong64 [
	
	^ self translatedReceiver castTo: (self cTypeFor: #sqLong)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> signedIntToLong [
	self flag:#missingCheck. 
	"I'm assuming i'm always in 64 currently,
	see generateSignedIntToLong: msgNode on: aStream indent: level"
	^ (self translatedReceiver castTo: (self cTypeFor: #int)) castTo: (self cTypeFor: #usqInt)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> signedIntToLong64 [
	^ self translatedReceiver castTo: (self cTypeFor: #usqInt)
]

{ #category : #'translation-keyword' }
MASlangReceiver >> subclassResponsibility [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #error); yourself) ;
		arguments: { ASTCLiteral value: #subclassResponsibility };
		yourself
]

{ #category : #'translation-keyword' }
MASlangReceiver >> timesRepeat: aBlock [
	| stop |
	stop := self receiverNode.
	receiverNode := self literalNodeFor: 1.
	^ self to: stop do: aBlock
]

{ #category : #'translation-keyword' }
MASlangReceiver >> to: stop by: step do: aBlock [
	| node arg receiver | 
	node := self to: stop  do: aBlock.
	
	receiver := ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself.
	arg := step acceptVisitor: methodTranslator.
	arg isLiteral ifTrue: [ arg value = 0 ifTrue: [ BadArgument new result: 0; expected: 'non 0 value' ] ].
	
	node iteratorModification: (receiver assign: (receiver assignAndAdd: arg)).
	^ node
]

{ #category : #'translation-keyword' }
MASlangReceiver >> to: stop do: aBlock [
	| iterID |
	aBlock arguments size ~= 1
		ifTrue: [  iterID := ASTCIdentifier new id: #anIterator; yourself ]
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

{ #category : #'translation-keyword' }
MASlangReceiver >> touch: something [
	"does not do appear in translation"
	^ ASTCEmptyStatement new
]

{ #category : #'translation-keyword' }
MASlangReceiver >> truncateTo: anInt [
	^ self translatedReceiver & ((anInt acceptVisitor: methodTranslator) - (ASTCLiteral value: 1)) bitNot
]

{ #category : #'translation-keyword' }
MASlangReceiver >> tryEvaluateLiteralExpression: anExpression [

	^ MASlangConstantEvaluator new
		program: methodTranslator program;
		evaluate: anExpression
		ifNonValueDo: [ nil ]
]

{ #category : #'translation-keyword' }
MASlangReceiver >> unsupportedFeature: aSelector [
	self isStrict ifTrue: [ ^ UnsupportedFeature new feature: aSelector ; signal ].
	
	^ ASTCLiteral value: '''unsuportedFeature'''
]

{ #category : #'translation-keyword' }
MASlangReceiver >> value: anArg [
	^ self valueWithArguments: { anArg }
]

{ #category : #'translation-keyword' }
MASlangReceiver >> value: anArg value: aSecondArg [
	^ self valueWithArguments: { anArg. aSecondArg }
]

{ #category : #'translation-keyword' }
MASlangReceiver >> valueWithArguments: anArrayOfArgs [
	MASlangMinimalInliner renameVariablesOf: receiverNode byArguments: anArrayOfArgs.
	^ self translatedReceiver
]

{ #category : #'translation-keyword' }
MASlangReceiver >> whileFalse [
	"a whileTrue is rewritten in slang to have an if using the latest statement of the block"
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement condition: whileStatement condition not.
	
	^ whileStatement
]

{ #category : #'translation-keyword' }
MASlangReceiver >> whileFalse: aBlock [
	| whileStatement |
	whileStatement := self whileTrue: aBlock.
	whileStatement condition: whileStatement condition not.
	
	^ whileStatement
]

{ #category : #'translation-keyword' }
MASlangReceiver >> whileTrue [
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

{ #category : #'translation-keyword' }
MASlangReceiver >> whileTrue: aBlock [
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement body addStatement: (aBlock acceptVisitor: methodTranslator).
	^ whileStatement
]

{ #category : #'translation-keyword' }
MASlangReceiver >> wordSize [
	^ self bytesPerWord
]

{ #category : #'translation-operators' }
MASlangReceiver >> | aBool [
	^ self translatedReceiver | (aBool acceptVisitor: methodTranslator) 
		
]
