Class {
	#name : #ANSlangLiteralValueNodeTranslator,
	#superclass : #ASTCLiteralValueNodeTranslator,
	#category : #'Angler-Slang'
}

{ #category : #translate }
ANSlangLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	| value res |
	
	value := (#( true false ) includes: aLiteralNode value)
		ifTrue: [ aLiteralNode value asBit ]
		ifFalse: [
			aLiteralNode value ifNil:[ #null ]
				ifNotNil:[ aLiteralNode value ]].
			
	(value isString and:[ value isSymbol ])
		ifTrue: [ ^ ASTCIdentifier id: value ]. "symbols are identifiers in Slang"
		
	res := self createLiteralNodeWithValue: value fromOriginalNode: aLiteralNode.
	(aLiteralNode value isInteger and: [ aLiteralNode value < 0 ])
		ifTrue:[ 
			res value: res value negated. "-3 becomes 3"
			res := res negated " add negationOperator "]."this allows to remove double negatives"
	^ res
]
