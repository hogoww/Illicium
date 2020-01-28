Class {
	#name : #ANSlangLiteralValueNodeTranslator,
	#superclass : #ASTCLiteralValueNodeTranslator,
	#category : #'Angler-Slang'
}

{ #category : #translate }
ANSlangLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	| value |
	
	value := (#( true false ) includes: aLiteralNode value)
		ifTrue: [ aLiteralNode value asBit ]
		ifFalse: [
			aLiteralNode value ifNil:[ #null ]
				ifNotNil:[ aLiteralNode value ]].
			
	(value isString and:[ value isSymbol ])
	ifTrue: [ ASTCIdentifier id: value ]. "symbols are identifiers in Slang"
		
	^ self createLiteralNodeWithValue: value fromOriginalNode: aLiteralNode
]
