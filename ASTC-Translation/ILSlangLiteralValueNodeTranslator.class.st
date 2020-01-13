Class {
	#name : #ILSlangLiteralValueNodeTranslator,
	#superclass : #ASTCLiteralValueNodeTranslator,
	#category : #'ASTC-Translation-nodes'
}

{ #category : #translate }
ILSlangLiteralValueNodeTranslator >> translateNode: aLiteralNode [
	
	| value |
	value := (#( true false ) includes: aLiteralNode value)
		ifTrue: [ aLiteralNode value asBit ]
		ifFalse: [ aLiteralNode value ].
		
	^ self createLiteralNodeWithValue: value fromOriginalNode: aLiteralNode
]
