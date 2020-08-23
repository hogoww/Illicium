Class {
	#name : #FAClassStateTranslator,
	#superclass : #FAAbstractStateTranslator,
	#category : #'FAngler-Core-StateTranslation'
}

{ #category : #'translation-api' }
FAClassStateTranslator >> translateStateOf: aClass [
	| cu |
	
	self halt.
	"currently unused"
	
	"not sure SharedPoolVariables are are considered in slang"	
	cu := ASTCCompilationUnit new.	
	"We only translate the current's class slots, since we're treating each class in the hierarchy, and there is no polymorphism. (besides VMclass, will see in time"
	(aClass allSlotsBelow: VMClass) collect: [:aSlot | self translateSlot: aSlot ] into: cu.
	"aClass classVariables collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
	"aClass sharedPools collect: [:aSlot | aSlot acceptTranslator: self ] into: cu."
	^ cu
]
