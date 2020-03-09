Class {
	#name : #MASlangReceiver,
	#superclass : #FAKernelClass,
	#instVars : [
		'type'
	],
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
	caseOf: caseOf:otherwise:) "caseOf is parsed in a specific way in TASTm which we don't. It therefore has to be an exception"
]

{ #category : #'translation-operators' }
MASlangReceiver >> % anOperand [
	^ self translatedReceiver % (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> & anOperand [
	^ self translatedReceiver & (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
MASlangReceiver >> * aNumber [
	"same code as ASTCNumber>>#*"
	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> + anOperand [
	^ self translatedReceiver + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MASlangReceiver >> - anOperand [
	^ self translatedReceiver - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
MASlangReceiver >> / anotherObject [
	^ self translatedReceiver / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
MASlangReceiver >> // anInteger [
	"same as #/ in slang"
	^ self / anInteger
]

{ #category : #accessing }
MASlangReceiver >> < aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
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
				castTo: (self cTypeFor: self myType)
]

{ #category : #accessing }
MASlangReceiver >> <= aNumber [
	"same code as ASTCSmallInteger>>#<="
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #testing }
MASlangReceiver >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedReceiver equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:
			[ ^ super = anotherObject and: [ type = anotherObject type ]]) ]
]

{ #category : #'reflective operations' }
MASlangReceiver >> == anOperand [
	^ self translatedReceiver equals: (anOperand acceptVisitor: methodTranslator)
]

{ #category : #typing }
MASlangReceiver >> > aNumber [
	"same as ASTCSmallInteger>>#>"
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
MASlangReceiver >> >= aNumber [
	"same as ASTCSmallInteger>>#>="
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
MASlangReceiver >> >> aNumber [
	^ (self translatedReceiver castTo: (self cTypeFor: #usqInt)) >> (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
MASlangReceiver >> \\ anInteger [
	"same as #% in slang"
	^ self & anInteger
]

{ #category : #'reflective operations' }
MASlangReceiver >> addressOf: anExpression [
	^ (anExpression acceptVisitor: methodTranslator) asAddressOf
]

{ #category : #'reflective operations' }
MASlangReceiver >> addressOf: anExpression put: anAssignmentBlock [
	"Ssecond argument is for simulation purpose, i assume.
	Regardless, it's ignored during translation"
	^ self addressOf: anExpression
]

{ #category : #'reflective operations' }
MASlangReceiver >> allMask: anOperand [
	| arg |
	arg := anOperand acceptVisitor: methodTranslator.
	^ self translatedReceiver & arg equals: arg
]

{ #category : #typing }
MASlangReceiver >> and: aBoolean [
	^ self translatedReceiver && (aBoolean acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> anyMask: anOperand [
	^ self & anOperand
]

{ #category : #accessing }
MASlangReceiver >> asCType [
	<deprecated>
	"not sure how this is declared"
	self flag: #deprecated.
	"for API concistency with the initial design. "
	^ type ifNil: [ #sqInt ]
]

{ #category : #typing }
MASlangReceiver >> asConstraint [
	^ SingleType new type: self; yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> asFloat [
	^ self translatedReceiver castTo: (self cTypeFor: #double)
]

{ #category : #'reflective operations' }
MASlangReceiver >> asInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #sqInt)
]

{ #category : #'reflective operations' }
MASlangReceiver >> asUnsignedInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #usqInt)
]

{ #category : #'reflective operations' }
MASlangReceiver >> asUnsignedIntegerPtr [
	^ self translatedReceiver castTo: (self cTypeFor: #usqIntptr_t)
]

{ #category : #'reflective operations' }
MASlangReceiver >> asVoidPointer [
	^ self translatedReceiver castTo: (self cTypeFor: #'void *')
]

{ #category : #accessing }
MASlangReceiver >> at: anExpression [
	^ self translatedReceiver indexAt: (anExpression acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> at: anExpression put: aValue [
	^ (self at: anExpression) assign: (aValue acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> baseHeaderSize [
	^ ASTCIdentifier new id: #BaseHeaderSize
]

{ #category : #'reflective operations' }
MASlangReceiver >> between: min and: max [
	| receiver minArg maxArg |
	receiver := self translatedReceiver.
	minArg := min acceptVisitor: methodTranslator.
	maxArg := max acceptVisitor: methodTranslator.
	^ (receiver >= minArg) && (receiver <= maxArg)
]

{ #category : #'reflective operations' }
MASlangReceiver >> bitAnd: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver & (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> bitClear: aMask [
	^ (self bitOr: aMask) - (aMask acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> bitInvert64 [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #bitInvert64
]

{ #category : #'reflective operations' }
MASlangReceiver >> bitOr: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver | (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
MASlangReceiver >> bitXor: anInteger [
	"pretty sure it's an integer"
	^ self translatedReceiver bitXor: (anInteger acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> byteSwap32 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_4_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'reflective operations' }
MASlangReceiver >> byteSwap64 [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_8_BYTES) ;
		arguments: {(receiverNode acceptVisitor: methodTranslator)};
		yourself.
]

{ #category : #'reflective operations' }
MASlangReceiver >> byteSwapped32IfBigEndian: anInteger [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_4_BYTES_IF_BIGENDIAN) ;
		arguments: { anInteger acceptVisitor: methodTranslator };
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> byteSwapped64IfBigEndian: anInteger [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #SQ_SWAP_8_BYTES_IF_BIGENDIAN) ;
		arguments: { anInteger acceptVisitor: methodTranslator };
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> bytesPerOop [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerOop
]

{ #category : #'reflective operations' }
MASlangReceiver >> bytesPerWord [
	"i think ?"
	^ ASTCIdentifier id: #BytesPerWord
]

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
MASlangReceiver >> cCode: aString inSmalltalk: ignoredBlock [
	^ self cCode: aString
]

{ #category : #typing }
MASlangReceiver >> cCoerce: aVariable to: aType [
	"a type is a string literal in slang case"
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (self cTypeFor: aType)
]

{ #category : #'reflective operations' }
MASlangReceiver >> cCoerceSimple: aVariable to: aType [
	^ self cCoerce: aVariable to: aType
]

{ #category : #'reflective operations' }
MASlangReceiver >> cTypeFor: aSymbol [
	^ ASTCType new 
		type: (self class new type: aSymbol value ; yourself) asConstraint;
		yourself
]

{ #category : #accessing }
MASlangReceiver >> caseOf: anArray [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #caseOf:
]

{ #category : #accessing }
MASlangReceiver >> caseOf: anArray otherwise: something [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #caseOf:otherwise:
]

{ #category : #'reflective operations' }
MASlangReceiver >> cppIf: aPredicate ifTrue: trueBlock [
	^ self cppIf: aPredicate ifTrue: trueBlock ifFalse: nil
]

{ #category : #'reflective operations' }
MASlangReceiver >> cppIf: aPredicate ifTrue: trueBlock ifFalse: falseBlock [
	| res |
	res := ASTCPreprocessorIf new
		condition: (aPredicate acceptVisitor: methodTranslator).
	res then addAll: ((trueBlock acceptVisitor: methodTranslator) statements collect: [ :aStatement | aStatement expression ]).
	falseBlock ifNotNil: [ res else addAll: ((falseBlock acceptVisitor: methodTranslator) statements collect: [ :aStatement | aStatement expression ])].
	^ res
]

{ #category : #'reflective operations' }
MASlangReceiver >> deny: something [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #deny:
]

{ #category : #'reflective operations' }
MASlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand: ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal ]. 
	
	^ (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: aMessage selector); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]

{ #category : #'reflective operations' }
MASlangReceiver >> eassert: aBlock [
	^	ASTCFunctionCall new
		id: (ASTCIdentifier new id: #eassert);
		addArgument: (aBlock acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> flag: anArgument [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #flag); yourself) ;
		arguments: {ASTCLiteral value: anArgument value asString};
		yourself
]

{ #category : #accessing }
MASlangReceiver >> ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	| ifNode |
	ifNode := self ifTrue: falseBlock.
	ifNode condition: ifNode condition not.
	^ ifNode
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifFalse: falseBlock ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	| ifNode |
	ifNode := self ifTrue: falseBlock ifFalse: trueBlock.
	ifNode condition: ifNode condition not.
	^ ifNode
]

{ #category : #'translation-testing' }
MASlangReceiver >> ifNil: aNilBlock [
	| ifNotNilNode |
	ifNotNilNode := self ifNotNil: aNilBlock.
	ifNotNilNode condition: ifNotNilNode condition not.
	^ ifNotNilNode
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifNil: aNilBlock ifNotNil: anIfNotNilBlock [
	self assert: anIfNotNilBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver not;
		then: (aNilBlock acceptVisitor: methodTranslator);
		else: (anIfNotNilBlock acceptVisitor: methodTranslator);
		yourself 
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifNotNil: anIfNotNilBlock [
	self assert: anIfNotNilBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver;
		then: (anIfNotNilBlock acceptVisitor: methodTranslator)
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifNotNil: anIfNotNilBlock ifNil: aNilBlock [ 
	^ self ifNil: aNilBlock ifNotNil: anIfNotNilBlock
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
MASlangReceiver >> ifTrue: trueBlock ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
 	^ ASTCIf new
		condition: self translatedReceiver;
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> integerObjectOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #integerObjectOf ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> integerValueOf: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ (anOop acceptVisitor: methodTranslator) >> (ASTCLiteral value: 3)
]

{ #category : #'reflective operations' }
MASlangReceiver >> isIntegerObject: anOop [
	"translated as a simple function call. To be perfectly honest i'm not sure why it's a special selector"
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: #isIntegerObject ; yourself);
		addArgument: (anOop acceptVisitor: methodTranslator);
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> isNil [
	^ self translatedReceiver equals: (ASTCLiteral value: #null)
]

{ #category : #'reflective operations' }
MASlangReceiver >> isStrict [
	^ methodTranslator isStrict
]

{ #category : #accessing }
MASlangReceiver >> literalNodeFor: aValue [ 
	^ aValue asLiteralNode 
		propertyAt: FATypeAnnotator propertyName 
		put: (self asConstraint -> 'generated, no PhineasType');
		yourself
	
]

{ #category : #'reflective operations' }
MASlangReceiver >> max: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: arg
		else: translatedReceiver
]

{ #category : #typing }
MASlangReceiver >> maxSmallInteger [
	^ ASTCIdentifier new id: #MaxSmallInteger ; yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> min: anInt [
	| arg translatedReceiver |
	arg := anInt acceptVisitor: methodTranslator.
	translatedReceiver := self translatedReceiver.
	^ translatedReceiver < arg
		then: translatedReceiver
		else: arg
]

{ #category : #typing }
MASlangReceiver >> minSmallInteger [
	^ ASTCIdentifier new id: #MinSmallInteger ; yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> negated [
	^ self translatedReceiver negated
]

{ #category : #typing }
MASlangReceiver >> new [
	"very hacky way to 'create' a 'new' instance of the recever... Should not stay that way."
	self flag: #hack.
	^ self

]

{ #category : #'reflective operations' }
MASlangReceiver >> noMask: anOperand [
	^ (self translatedReceiver & (anOperand acceptVisitor: methodTranslator)) equals: (ASTCLiteral value: 0)
]

{ #category : #accessing }
MASlangReceiver >> not [
	^ self translatedReceiver not
]

{ #category : #'reflective operations' }
MASlangReceiver >> notNil [
	^ self translatedReceiver notEquals: (ASTCLiteral value: #null)
]

{ #category : #'reflective operations' }
MASlangReceiver >> or: aBoolean [
	^ self translatedReceiver || (aBoolean acceptVisitor: methodTranslator)
]

{ #category : #'reflective operations' }
MASlangReceiver >> perform: aSelector [
	^ self perform: aSelector with: { }
]

{ #category : #'reflective operations' }
MASlangReceiver >> perform: aSelector with: arguments [
	"Not used correctly in slang :')"
	| args |
	args := arguments isCollection ifTrue:[ arguments ] ifFalse: [ { arguments } ].
	^ ASTCFunctionCall new 
		id:(aSelector acceptVisitor: methodTranslator);
		arguments: (args collect: [ :anArg | anArg acceptVisitor: methodTranslator ]);
		yourself
]

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
MASlangReceiver >> shouldNotImplement [ 
	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #error); yourself) ;
		arguments: { ASTCLiteral value: 'shouldNotImplement' };
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> signedIntFromLong64 [
	
	^ self translatedReceiver castTo: (self cTypeFor: #sqLong)
]

{ #category : #'reflective operations' }
MASlangReceiver >> signedIntToLong [
	self flag:#missingCheck. 
	"I'm assuming i'm always in 64 currently,
	see generateSignedIntToLong: msgNode on: aStream indent: level"
	^ (self translatedReceiver castTo: (self cTypeFor: #int)) castTo: (self cTypeFor: #usqInt)
]

{ #category : #'reflective operations' }
MASlangReceiver >> signedIntToLong64 [
	^ self translatedReceiver castTo: (self cTypeFor: #usqInt)
]

{ #category : #'reflective operations' }
MASlangReceiver >> subclassResponsibility [

	^ ASTCFunctionCall new 
		id: (ASTCIdentifier new id: (FAFormatHelper formatSelector: #error); yourself) ;
		arguments: { ASTCLiteral value: #subclassResponsibility };
		yourself
]

{ #category : #'reflective operations' }
MASlangReceiver >> timesRepeat: aBlock [
	| stop |
	stop := self receiverNode.
	receiverNode := self literalNodeFor: 0.
	^ self to: stop do: aBlock
]

{ #category : #'reflective operations' }
MASlangReceiver >> to: stop by: step do: aBlock [
	| node arg receiver | 
	node := self to: stop  do: aBlock.
	
	receiver := ASTCIdentifier new id: (aBlock arguments at:1) name ; yourself.
	arg := step acceptVisitor: methodTranslator.
	arg isLiteral ifTrue: [ arg value = 0 ifTrue: [ BadArgument new result: 0; expected: 'non 0 value' ] ].
	
	node iteratorModification: (receiver assign: (receiver assignAndAdd: arg)).
	^ node
]

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
MASlangReceiver >> touch: something [
	"does not do appear in translation"
	^ ASTCEmptyStatement new
]

{ #category : #'reflective operations' }
MASlangReceiver >> tryEvaluateLiteralExpression: anExpression [

	^ MASlangConstantEvaluator new
		program: methodTranslator program;
		evaluate: anExpression
		ifNonValueDo: [ nil ]
]

{ #category : #accessing }
MASlangReceiver >> type [
	^ type
]

{ #category : #accessing }
MASlangReceiver >> type: aType [
	type := aType
]

{ #category : #'reflective operations' }
MASlangReceiver >> unsupportedFeature: aSelector [
	self isStrict ifTrue: [ ^ UnsupportedFeature new feature: aSelector ; signal ].
	
	^ ASTCLiteral value: '''unsuportedFeature'''
]

{ #category : #'reflective operations' }
MASlangReceiver >> value: somethong [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #value:
]

{ #category : #'reflective operations' }
MASlangReceiver >> value: somethong value: bidule [
	self flag: #undone. "want to see how slang translates it first."
	^ self unsupportedFeature: #value:value:
]

{ #category : #'reflective operations' }
MASlangReceiver >> whileFalse [
	"a whileTrue is rewritten in slang to have an if using the latest statement of the block"
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement condition: whileStatement condition not.
	
	^ whileStatement
]

{ #category : #'reflective operations' }
MASlangReceiver >> whileFalse: aBlock [
	| whileStatement |
	whileStatement := self whileTrue: aBlock.
	whileStatement condition: whileStatement condition not.
	
	^ whileStatement
]

{ #category : #'reflective operations' }
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

{ #category : #'reflective operations' }
MASlangReceiver >> whileTrue: aBlock [
	| whileStatement |
	whileStatement := self whileTrue.
	whileStatement body addStatement: (aBlock acceptVisitor: methodTranslator).
	^ whileStatement
]

{ #category : #'reflective operations' }
MASlangReceiver >> wordSize [
	^ self bytesPerWord
]

{ #category : #accessing }
MASlangReceiver >> | aBool [
	^ self translatedReceiver | (aBool acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
MASlangReceiver >> ~= anotherObject [
	"if weird behavior, it's probably because it's not in the right context."
	"this is only defined for translation, so if it's use for receiver equality, it won't work."
	^ self translatedReceiver notEquals: (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #'reflective operations' }
MASlangReceiver >> ~~ anOperand [
	"duplicates the code of #==
	funny thing, if we don't the message is not send, and we have a weird bug"
	^ self translatedReceiver equals: (anOperand acceptVisitor: methodTranslator) not
]
