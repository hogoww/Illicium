Class {
	#name : #FAInstanceVariableSlotTranslator,
	#superclass : #FAAbstractSlotTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #translation }
FAInstanceVariableSlotTranslator >> errorEmptyTypeFor: aSlot [
	EmptyTypeError new 
		varName: aSlot name;
		signal
]

{ #category : #translation }
FAInstanceVariableSlotTranslator >> translateSlot: aSlot [
	| ivType |
	ivType := self typeOfSlot: aSlot.
	ivType isEmptyType ifTrue: [ self errorEmptyTypeFor: aSlot ].
	^ ASTCVariableDeclaration new
		id: (ASTCIdentifier new
			id: aSlot name;
			yourself);
		type: (ASTCType new
			type: ivType;
			yourself);
		yourself
]
