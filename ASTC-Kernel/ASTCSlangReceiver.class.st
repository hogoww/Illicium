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

{ #category : #'translation-operators' }
ASTCSlangReceiver >> + anOperand [
	^ self translatedValue + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
ASTCSlangReceiver >> - anOperand [
	^ self translatedValue - (anOperand acceptVisitor: methodTranslator)
]

{ #category : #testing }
ASTCSlangReceiver >> = anotherObject [
	^ super = anotherObject and: [ type = anotherObject type ]
]

{ #category : #accessing }
ASTCSlangReceiver >> asCType [
	"for API concistency with the initial design. "
	^ type ifNil: [ #undefined ]
]

{ #category : #typing }
ASTCSlangReceiver >> asConstraint [
	^ SingleType new type: self; yourself
]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> doesNotUnderstand: aMessage [
	aMessage selector = #doesNotUnderstand ifTrue:[ Error signal: 'infiniteRecursion' ].
	(self class slangReservedSelector includes: aMessage selector) 
		ifTrue:[ UnsupportedFeature new feature: ('translation of Slang selector: #', aMessage selector) ; signal]. 
	
	^ (ASTCFunctionCall new 
			id: (ASTCIdentifier new id: (methodTranslator formatSelector:(aMessage selector)); yourself) ;
			arguments: (aMessage arguments collect:[:each| each acceptVisitor: methodTranslator ]);
			yourself)
]

{ #category : #'translation-testing' }
ASTCSlangReceiver >> ifNil: aBlock [
	self assert: aBlock isBlock.
	^ ASTCIf new
		condition: self translatedValue not;
		then: (aBlock acceptVisitor: methodTranslator)
		yourself.
]

{ #category : #typing }
ASTCSlangReceiver >> new [
	^ self

]

{ #category : #'reflective operations' }
ASTCSlangReceiver >> printString [
	^String streamContents:[:stream|
		stream << (self class asString)
			<<'('
			<< value printString
			<< '-';
			<< self asCType;
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
