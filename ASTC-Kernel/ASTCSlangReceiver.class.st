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
	^ #(#at:put: #negated #bitOr: #raisedTo: #+ #'<<' #asVoidPointer #addressOf: #cCode:inSmalltalk: #asUnsignedLong #asUnsignedIntegerPtr #baseHeaderSize #value:value:value:value:value: #byteSwap32 #or: #bitInvert32 #perform:with:with:with:with:with: #asFloat #inline: #ifNotNil:ifNil: #> #between:and: #asUnsignedLongLong #preDecrement #flag: #preIncrement #whileFalse: #rounded #and: #at: #isNil #perform:with: #* #sharedCodeNamed:inCase: #signedIntFromLong #& #asAddress:put: #truncateTo: #cppIf:ifTrue: #cCode: #shouldBeImplemented #timesRepeat: #'~~' #| #byteSwapped64IfBigEndian: #ifNotNil: #'>>>' #min: #basicAt: #= #asInteger #touch: #bytesPerWord #value #value:value:value:value:value:value: #'\\' #whileTrue: #'>>' #'//' #asLong #signedIntToLong64 #ifNil:ifNotNil: #whileFalse #signedIntToShort #- #value: #maxSmallInteger #ifFalse:ifTrue: #to:by:do: #perform: #asSymbol #bitInvert64 #perform:with:with:with: #cPreprocessorDirective: #shouldNotImplement #bytesPerOop #ifFalse: #bitShift: #bitAnd: #byteSwap64 #asUnsignedInteger #subclassResponsibility #signedIntFromShort #signedBitShift: #noMask: #cCoerce:to: #ifNil: #cCoerceSimple:to: #cppIf:ifTrue:ifFalse: #minSmallInteger #< #integerValueOf: #asIntegerPtr #byteSwapped32IfBigEndian: #'>=' #perform:with:with: #deny: #'<=' #max: #notNil #'==' #not #ifTrue: #ifTrue:ifFalse: #whileTrue #signedIntToLong #value:value:value:value: #repeat #value:value:value: #value:value: #abs #wordSize #allMask: #bitClear: #basicAt:put: #anyMask: #bitXor: #perform:with:with:with:with: #to:do: #addressOf:put: #integerObjectOf: #isIntegerObject: #signedIntFromLong64 #'~=' #/)
]

{ #category : #accessing }
ASTCSlangReceiver >> * aNumber [
	"same code as ASTCNumber>>#*"
	^ self translatedValue * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ASTCSlangReceiver >> + anOperand [
	^ self translatedValue + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ASTCSlangReceiver >> - anOperand [
	^ self translatedValue - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> // anotherObject [
	"should not work"
	self flag:#notWorking.
	^ self translatedValue / (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #accessing }
ASTCSlangReceiver >> < aNumber [
	"same as ASTCSmallInteger<<#>"
	^ self translatedValue < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> <= aNumber [
	"same code as ASTCSmallInteger>>#<="
	^ self translatedValue <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #testing }
ASTCSlangReceiver >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedValue equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ (methodTranslator ifNil:
			[ ^ super = anotherObject and: [ type = anotherObject type ]]) ]
]

{ #category : #typing }
ASTCSlangReceiver >> > aNumber [
	"same as ASTCSmallInteger<<#>"
	^ self translatedValue > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #accessing }
ASTCSlangReceiver >> >= aNumber [
	"same as ASTCSmallInteger<<#>="
	^ self translatedValue >= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #typing }
ASTCSlangReceiver >> and: aBoolean [
	| args |
	"same code as ASTCBoolean>>#ifTrue:ifFalse:"
	args := self binarySelectorArgs: aBoolean.
	^ (args at:1) && (args at:2)
]

{ #category : #accessing }
ASTCSlangReceiver >> asCType [
	"for API concistency with the initial design. "
	^ type ifNil: [ #sqInt ]
]

{ #category : #typing }
ASTCSlangReceiver >> asConstraint [
	^ SingleType new type: self; yourself
]

{ #category : #accessing }
ASTCSlangReceiver >> binarySelectorArgs: aBoolean [
	| firstOperand secondOperand |
	firstOperand := value isBlock
		ifTrue: [ value statements size = 1
				ifTrue: [ value statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ value acceptVisitor: methodTranslator ].
	secondOperand := aBoolean isBlock
		ifTrue: [ aBoolean statements size = 1
				ifTrue: [ aBoolean statements first acceptVisitor: methodTranslator ]
				ifFalse: [ self error: 'Cannot inline the block inside an #and.' ] ]
		ifFalse: [ aBoolean acceptVisitor: methodTranslator ].
	^ { firstOperand. secondOperand }
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cCode: aBlock [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> cCode: aBlock inSmalltalk: anotherBlock [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #typing }
ASTCSlangReceiver >> cCoerce: aVariable to: aType [
	^ (aVariable acceptVisitor: methodTranslator)
		castTo: (ASTCType new type: (methodTranslator getNodeTranslationType: aType) ; yourself)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal]. 
	
	^ (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (ASTCFormatHelper formatSelector: aMessage selector); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]

{ #category : #accessing }
ASTCSlangReceiver >> ifFalse: falseBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition: (self value acceptVisitor: self visitor) not;
		then: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #'translation-testing' }
ASTCSlangReceiver >> ifNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedValue not;
		then: (aBlock acceptVisitor: methodTranslator)
		yourself.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrue: trueBlock [
	"same code as ASTCBoolean>>#ifFalse:"
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
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
	"unfinished, because it requires inlining."
	self flag:#unfinished.
	^ self translatedValue 
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrueIfFalseKindOfMessages: args [
	^ self value parent parent isSequence
		ifTrue: [ self ifTrueIfFalseStatement: args ]
		ifFalse: [ self ifTrueIfFalseExpression: args. ]
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> ifTrueIfFalseStatement: args [
	^ ASTCIf new
		condition: (self value acceptVisitor:self visitor);
		then: (args first acceptVisitor: self visitor);
		else: (args second acceptVisitor: self visitor);
		yourself.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> integerObjectOf: anOop [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> integerValueOf: anOop [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> isIntegerObject: anOop [
	self flag: #undone. "want to see how slang translates it first."
	^ ASTCLiteral value: '''unsuportedFeature'''.
]

{ #category : #typing }
ASTCSlangReceiver >> new [
	"very hacky way to 'create' a 'new' instance of the recever... Should not stay that way."
	self flag: #hack.
	^ self

]

{ #category : #accessing }
ASTCSlangReceiver >> not [
	"same code as Boolean>>#not"
	^ (value acceptVisitor: methodTranslator) not
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> or: aBoolean [
	| args |
	"same code as ASTCBoolean>>#or:"
	args := self binarySelectorArgs: aBoolean.
	^ (args at:1) || (args at:2)
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<< '-';
			print: self asCType;
			<<')'.
		].
]

{ #category : #accessing }
ASTCSlangReceiver >> type [
	^ type
]

{ #category : #accessing }
ASTCSlangReceiver >> type: aType [
	type := aType
]

{ #category : #accessing }
ASTCSlangReceiver >> ~= anotherObject [
	"if weird behavior, it's probably because it's not in the right context."
	"this is only defined for translation, so if it's use for receiver equality, it won't work."
	^ self translatedValue notEquals: (anotherObject acceptVisitor: methodTranslator) 
		
]
