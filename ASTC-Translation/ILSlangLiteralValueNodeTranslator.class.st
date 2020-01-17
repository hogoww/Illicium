Class {
	#name : #ILSlangLiteralValueNodeTranslator,
	#superclass : #ASTCLiteralValueNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ILSlangLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	
	| value |
	value := (#( true false ) includes: aLiteralNode value)
		ifTrue: [ aLiteralNode value asBit ]
		ifFalse: [
			aLiteralNode value ifNil:[ 'null' ]
				ifNotNil:[ aLiteralNode value ]].
		
	^ self createLiteralNodeWithValue: value fromOriginalNode: aLiteralNode
]
