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
		
	^ self createLiteralNodeWithValue: value fromOriginalNode: aLiteralNode
]
