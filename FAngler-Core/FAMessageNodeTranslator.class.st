Class {
	#name : #FAMessageNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAMessageNodeTranslator >> forward: aMessage to: aType [
	| aReceiver |
	aReceiver := (methodTranslator
		getReplacementType: aType) createInstance
		receiverNode: aMessage receiver;
		methodTranslator: methodTranslator;
		yourself.
	^ aReceiver
		perform: aMessage selector
		withArguments: aMessage arguments asArray
]

{ #category : #translate }
FAMessageNodeTranslator >> translateNode: aMessageNode [
	| receiver res |
	receiver := (methodTranslator
		getNodeTranslationType: aMessageNode receiver) createInstance
		receiverNode: aMessageNode receiver;
		methodTranslator: methodTranslator;
		yourself.
	res := (receiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray).
	
	(res isKindOf: ASTCNode) ifFalse: [self error].
	res pharoNode: aMessageNode;
		comment: aMessageNode commentOrNil;
		yourself.
	^ res
]
