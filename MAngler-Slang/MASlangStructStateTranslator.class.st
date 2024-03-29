Class {
	#name : #MASlangStructStateTranslator,
	#superclass : #FAAbstractStateTranslator,
	#category : #'MAngler-Slang-StateTranslators'
}

{ #category : #'translation-api' }
MASlangStructStateTranslator >> translateStateOf: aClass [
	| struct |
	"not sure SharedPoolVariables are are considered in slang"	
	struct := ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: (ASTCIdentifier id: aClass structTypeName) ; yourself);
		yourself.
	
	"We only translate the current's class slots, since we're treating each class in the hierarchy, and there is no polymorphism. (besides VMclass, will see in time"
	(aClass allSlotsBelow: VMClass) collect: [:aSlot | aSlot acceptTranslator: self. ] into: struct members.
	"aClass classVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: struct."
	"aClass sharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: struct."
	^ ASTCCompilationUnit new add: struct ; yourself
]
