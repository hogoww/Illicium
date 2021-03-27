Class {
	#name : #IlliciumArray,
	#superclass : #IlliciumAbstractCollection,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #type }
IlliciumArray class >> asCType [
	" Array don't know what type they are because it's a complex one. 
	It relies on CollectionType, which will build the corresponding CType"
	^ self shouldNotImplement 
]

{ #category : #accessing }
IlliciumArray >> asOrderedCollection [
	| res |
	receiverNode isDynamicArray
		ifFalse: [ ^ UnsupportedFeature new feature: 'asOrderedCollection is only usable in a very trivial way, see comment' ; signal ].

	" We only translate a literal array node currently : 
	{ 2. selector }
	addElement(addElement((newOrderedCollectionOfSize(2)) 2) selector)"
	res := self asFunctionCall: #newOrderedCollectionOfSize
		withTranslatedArguments: { receiverNode statements size asLiteralNode acceptVisitor: methodTranslator }.
	
	receiverNode statements do: [ :anElement | | message |
		message := MessageSend receiver: res selector: #add: argument: anElement.
		res := methodTranslator forward: message to: OrderedCollection
		].
	^ res
]

{ #category : #accessing }
IlliciumArray >> at: anIndex [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	^ self translatedReceiver indexAt: (anIndex acceptVisitor: methodTranslator) - (ASTCLiteral new value: 1; yourself)
]

{ #category : #accessing }
IlliciumArray >> at: anIndex put: aValue [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	^ (self at: anIndex) assign: (aValue acceptVisitor: methodTranslator)
]

{ #category : #accessing }
IlliciumArray >> do: aBlock [
	| size newBlock for arg iterator receiver |
	aBlock isBlock ifFalse:[ BadArgument new expected: RBBlockNode; result: aBlock class; signal ].
	aBlock arguments size = 1 ifFalse:[ ArgumentsCountMismatch signal ].
	
	size := receiverNode isLiteralArray 
		ifTrue:[ receiverNode contents size ]
		ifFalse:[ 
			[ (methodTranslator getNodeConcreteType: receiverNode) size ] on: NotFound 
				do:[ self error: '#do: is curently only usable if the IV using it defines a size property' ]].
	newBlock := aBlock copy.
	newBlock arguments at: 1 put: ((RBArgumentNode named: #i) parent: newBlock).
	for := methodTranslator forward: 
			(MessageSend receiver: (IlliciumSmallInteger literalNodeFor: 0) 
				selector: #to:do: 
				arguments:{ IlliciumSmallInteger literalNodeFor: size. newBlock} )
		to: SmallInteger.
		
	arg := (aBlock arguments at: 1) acceptVisitor: methodTranslator.
	iterator := (newBlock arguments at: 1) acceptVisitor: methodTranslator.
	receiver := self translatedReceiver.

	for condition: (for condition asLesserOperator).
	for defineIteratorWithType: SmallInteger asConstraint.
	for body statements addFirst: 
		(arg assign: (receiver indexAt: iterator))
		asStatement.

	^ for
]

{ #category : #creation }
IlliciumArray >> new: aLiteral of: aType [
	"it should be handled on the declaration part, as we currently want static arrays e.g., aType id[aSizeInteger]"
	^ ASTCEmptyStatement new
]

{ #category : #accessing }
IlliciumArray >> size [
	| size |
	size := (methodTranslator getNodeConcreteType: receiverNode) size.
	size isInteger ifFalse: [ self error: 'I don''t know yet' ].
	^ ASTCLiteral value: size
]
