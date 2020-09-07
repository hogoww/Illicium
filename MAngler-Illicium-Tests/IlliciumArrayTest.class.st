Class {
	#name : #IlliciumArrayTest,
	#superclass : #FAMessageNodeTranslatorTest,
	#category : #'MAngler-Illicium-Tests-NodesTests'
}

{ #category : #tests }
IlliciumArrayTest >> testAsOrderedCollection [
	| ast astc |
	ast := RBParser parseExpression: '{ 1 . 2  } asOrderedCollection'.
	
	self addType: OrderedCollection to: ast.
	self addType: (Array of:SmallInteger) to: ast receiver.
	ast receiver statements do: [ :anElement | self addType: SmallInteger to: anElement ].

	astc := ast acceptVisitor: methodTranslator.
	self assert: astc isFunctionCall.
	self assert: astc arguments size equals: 2.
	self assert: astc arguments first isLiteral.
	self assert: astc arguments second isFunctionCall.
	self assert: astc arguments second arguments size equals: 2.
	self assert: astc arguments second arguments first isLiteral.
	self assert: astc arguments second arguments second isFunctionCall.
]
