Class {
	#name : #ASTCMessageNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCMessageNodeTranslator >> translateNode: aMessageNode [
	| aReceiver |
	aReceiver := (methodTranslator
		getNodeTranslationType: aMessageNode receiver) new
		value: aMessageNode receiver;
		visitor: methodTranslator;
		yourself.
	^ aReceiver
		perform: aMessageNode selector
		withArguments: aMessageNode arguments asArray
]
