Class {
	#name : #MASlangProgram,
	#superclass : #FAProgram,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #accessing }
MASlangProgram >> classes [
	^ {VMClass.
	CogClass.
	SpurMemoryManager.
	Spur64BitMemoryManager.
	InterpreterPrimitives.
	StackInterpreter.
	StackInterpreterPrimitives.
	SpurGenerationScavenger.
	SpurSegmentManager.
	SpurCompactor.
	SpurPlanningCompactor.
	CogStackPages.
	InterpreterStackPages}
]

{ #category : #enumerating }
MASlangProgram >> methodsFromClass: aClass [ 
	 ^ methods select: [ :aMethod | aMethod methodClass = aClass ]
]

{ #category : #accessing }
MASlangProgram >> prepareWithInferer: inferer inTranslator: aTranslator [

	self isFullyAnnotated ifTrue: [ ^ self ].
	
	inferer vmClass: self vmClass.
	self classesDo: [ :each |
		each prepareToBeAddedToCodeGenerator: inferer.
		inferer checkClassForNameConflicts: each.
		inferer addClassVarsFor: each.
		inferer addPoolVarsFor: each.
		(each inheritsFrom: VMStructType) ifFalse:
			[inferer globalsAsSet addAll: (inferer instVarNamesForClass: each)].
		inferer retainMethods: (each requiredMethodNames: inferer options).
		((each allSelectorsBelow: VMClass) collect: 
			[:aSelector| 
			"self haltIf: aSelector = #containsOnlyValidBecomeObjects:and:twoWay:copyHash: ."
			each lookupSelector: aSelector ])
			select: [ :aMethod | (aTranslator shouldITranslate: aMethod) ]
			thenDo: [ :aMethod |
			| copy needToBeRemovedFirst |
			"self haltIf: aMethod selector = #containsOnlyValidBecomeObjects:and:twoWay:copyHash: ."
			copy := aMethod ast copy.
			needToBeRemovedFirst := self addMethod: copy.
			needToBeRemovedFirst ifTrue: [ inferer removeMethodForSelector: aMethod selector ].
			inferer addMethod: (copy asTranslationMethodOfClass: TMethod) ].
		each declareCVarsIn: inferer ].
	"self program methodsDo: [ :each | inferer addMethod: (each asTranslationMethodOfClass: TMethod)]."
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	aTranslator prepareMethodsASTs: (self methods "select: [:e| e methodClass ~~ StackInterpreter]").
	self isFullyAnnotated: true
]

{ #category : #removing }
MASlangProgram >> removeMethod: aMethodNode [
	methods removeKey: aMethodNode selector
]

{ #category : #accessing }
MASlangProgram >> vmClass [
	
	^ StackInterpreter
]

{ #category : #accessing }
MASlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
