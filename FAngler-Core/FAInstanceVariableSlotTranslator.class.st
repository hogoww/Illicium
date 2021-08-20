Class {
	#name : #FAInstanceVariableSlotTranslator,
	#superclass : #FAAbstractSlotTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #translation }
FAInstanceVariableSlotTranslator >> translateSlot: aSlot [
	| ivType |
	ivType := self typeOfSlot: aSlot.
	^ ASTCVariableDeclaration new
		id: (ASTCIdentifier new
			id: aSlot name;
			yourself);
		type: (ASTCType new
			type: ivType;
			yourself);
		yourself
]
