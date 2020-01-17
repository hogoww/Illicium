Class {
	#name : #ASTCMessageNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCMessageNodeTranslator >> forward: aMessage to: aType [
	| aReceiver |
	aReceiver := (methodTranslator
		getReplacementType: aType) createInstance
		value: aMessage receiver;
		visitor: methodTranslator;
		yourself.
	^ aReceiver
		perform: aMessage selector
		withArguments: aMessage arguments asArray
]

{ #category : #translate }
ASTCMessageNodeTranslator >> translateNode: aMessageNode [
	| receiver |
	receiver := (methodTranslator
		getNodeTranslationType: aMessageNode receiver) createInstance
		value: aMessageNode receiver;
		visitor: methodTranslator;
		yourself.
	^ (receiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray)
		pharoNode: aMessageNode;
		comment: aMessageNode commentOrNil;
		yourself
]
