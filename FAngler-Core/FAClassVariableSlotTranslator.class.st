Class {
	#name : #FAClassVariableSlotTranslator,
	#superclass : #FAAbstractSlotTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #translation }
FAClassVariableSlotTranslator >> translateSlot: aSlot [
	(self shouldTranslateVariable: aSlot name) ifFalse: [ ^ ASTCEmptyStatement new ].
	^ ASTCPreprocessorDefine new
		name: (ASTCIdentifier id: aSlot name);
		value: (aSlot value ifNotNil: [ ASTCLiteral new value: aSlot value; yourself ]);
		yourself
]
