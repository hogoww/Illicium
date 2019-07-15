Class {
	#name : #ASTCMessageNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCMessageNodeTranslator >> translateNode: aMessageNode withMainTranslator: aTranslator [
	| aReceiver |
	aReceiver := (aTranslator
		getNodeTranslationType: aMessageNode receiver) new
		value: aMessageNode receiver;
		visitor: aTranslator;
		yourself.
	^ aReceiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray
]
