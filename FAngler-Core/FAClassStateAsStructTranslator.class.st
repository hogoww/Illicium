Class {
	#name : #FAClassStateAsStructTranslator,
	#superclass : #FAAbstractStateTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'translation-api' }
FAClassStateAsStructTranslator >> translateStateOf: aClass [
	| struct |
	struct := ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: (classTranslator stateIdFor: aClass) ; yourself);
		yourself.
		
    "We only translate the current's class slots, since we're treating each class in the hierarchy, and there is no polymorphism. (besides VMclass, will see in time"
    (aClass allSlotsBelow: Object) collect: [:aSlot | 
		(aClass slotsNamesToIgnore includes: aSlot name)
			ifFalse: [ struct members add: (self translateSlot: aSlot) ] ].
    "aClass classVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
    "aClass sharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
	^ ASTCCompilationUnit new add: struct ; yourself
]
