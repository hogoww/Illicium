Class {
	#name : #ASTCMessageNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCMessageNodeTranslator >> forward: aMessage to: aType [
	| aReceiver |
	aReceiver := (methodTranslator
		getReplacementType: aType) createInstance
		receiverNode: aMessage receiver;
		visitor: methodTranslator;
		yourself.
	^ aReceiver
		perform: aMessage selector
		withArguments: aMessage arguments asArray
]

{ #category : #translate }
ASTCMessageNodeTranslator >> translateNode: aMessageNode [
	| receiver res |
	receiver := (methodTranslator
		getNodeTranslationType: aMessageNode receiver) createInstance
		receiverNode: aMessageNode receiver;
		visitor: methodTranslator;
		yourself.
	res := (receiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray).
	
	(res isKindOf: ASTCNode) not ifTrue: [self error].
	res pharoNode: aMessageNode;
		comment: aMessageNode commentOrNil;
		yourself.
	^ res
]