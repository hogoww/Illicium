Class {
	#name : #FAStructStateTranslator,
	#superclass : #FAAbstractStateTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'translation-api' }
FAStructStateTranslator >> translateStateOf: aClass [
	| struct |
	"not sure SharedPoolVariables are are considered in slang"	
	struct := ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: (ASTCIdentifier id: aClass name) ; yourself);
		yourself.
	
	"We only translate the current's class slots, since we're treating each class in the hierarchy, and there is no polymorphism. (besides VMclass, will see in time"
	aClass slots collect: [:aSlot | aSlot acceptTranslator: self. ] into: struct.
	"aClass classVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: struct."
	"aClass sharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: struct."
	^ ASTCCompilationUnit new add: struct ; yourself
]
