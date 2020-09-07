Class {
	#name : #FAMessageNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAMessageNodeTranslator >> forward: aMessageSend to: aType [
	| aReceiver |
	aReceiver := (methodTranslator
		getReplacementType: aType) createInstance
		receiverNode: aMessageSend receiver;
		methodTranslator: methodTranslator;
		yourself.
	^ aReceiver
		perform: aMessageSend selector
		withArguments: aMessageSend arguments asArray
]

{ #category : #translate }
FAMessageNodeTranslator >> perform: aMessageNode on: aReceiver [.
	^ aReceiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray.
]

{ #category : #translate }
FAMessageNodeTranslator >> translateNode: aMessageNode [
	| receiver res |
	receiver := (methodTranslator
		getNodeTranslationType: aMessageNode receiver) createInstance
		receiverNode: aMessageNode receiver;
		methodTranslator: methodTranslator;
		yourself.
	res := self perform: aMessageNode on: receiver.
	
	(res isKindOf: ASTCNode) ifFalse: [ self error ].
	res pharoNode: aMessageNode;
		comment: aMessageNode commentOrNil.
		
	^ res
]
