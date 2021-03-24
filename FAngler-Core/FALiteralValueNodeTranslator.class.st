Class {
	#name : #FALiteralValueNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FALiteralValueNodeTranslator >> createLiteralNodeWithValue: aValue fromOriginalNode: originalNode [
	| node |
	node := (aValue isSymbol
		ifTrue: [ aValue asCIdentifierNode ]
		ifFalse: [ aValue asCLiteralNode ]).
	node pharoNode: originalNode.
	^ node
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateBooleanNode: aValue [
	^ aValue asBit 
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateCharacterNode: aCharacter [ 
	^ aCharacter
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateNilNode [
	^ #null
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateNode: aLiteralNode [
	| res |
	res := self createLiteralNodeWithValue: (self translateNodeValue: aLiteralNode value)
		fromOriginalNode: aLiteralNode.

	"exception for integers, so we can remove double negative"
	(aLiteralNode value isInteger and: [ aLiteralNode value < 0 ])
		ifTrue:[ 
			res value: res value negated. "-3 becomes 3"
			res := res negated " add negationOperator "].
	^ res
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateNodeValue: aValue [
	aValue ifNil: [ ^ self translateNilNode ].
	(#(false true) includes: aValue) ifTrue:[ ^ self translateBooleanNode: aValue ].
	aValue isCharacter ifTrue: [ ^ self translateCharacterNode: aValue ].
	aValue isSymbol ifTrue: [ ^ self translateSymbolNode: aValue ].
	aValue isString ifTrue: [ ^ self translateStringNode: aValue ].
	aValue isNumber ifTrue: [ ^ self translateNumberNode: aValue ].

	^ self error.
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateNumberNode: aLiteralNode [ 
	^ aLiteralNode value
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateStringNode: aString [ 
	^ aString
]

{ #category : #translate }
FALiteralValueNodeTranslator >> translateSymbolNode: aValue [
	"symbols are identifiers in Slang"
	(aValue includes: $:) ifFalse:[ ^ aValue ].
	^ (FAFormatHelper formatSelector: aValue) asSymbol
]
