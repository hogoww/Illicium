Class {
	#name : #MASlangProgram,
	#superclass : #FAProgram,
	#classVars : [
		'InitializationOptions'
	],
	#category : #'MAngler-Slang-Translation'
}

{ #category : #'interpret-function' }
MASlangProgram >> addExpandedVersionsOf: aMethodNode with: inferer [
	| currentByteCodeReferences numberOfDuplication selector replacedNodes mainCopy bytecodeTable |
	self halt.
	numberOfDuplication := 0.
	selector := aMethodNode selector.
	"the number of time a bytecode method should be generated is known in the 256 firsts"
	bytecodeTable := inferer vmClass bytecodeTable.
	1 to: 256 do: [ :anIndex | (bytecodeTable at: anIndex) =  selector 
		ifTrue:[ numberOfDuplication := numberOfDuplication + 1 ] ].
	
	numberOfDuplication = 1 ifTrue: [ self error. "should never happend, because they would not be tagged as expand" ].

	mainCopy := aMethodNode copy.
	currentByteCodeReferences := mainCopy allChildren select: [ :aNode | aNode isInstanceVariableNode and: [ aNode name = #currentBytecode ] ].
	replacedNodes := currentByteCodeReferences collect: [ :aNode |
		| replacement |
		self flag: #missingTnodeEquivalent.
		replacement := RBLiteralValueNode value: -1.
		replacement propertyAt: #tNodeEquivalent put: (TConstantNode new setValue: -1).
		aNode replaceWith: replacement.
		replacement ]." we collect the references of the node we replace, because we will change the values in the next iteration"
	
	0 to: numberOfDuplication do: [ :number | "we update both references, although the TAST one does not matter currenlty"
			| copy newName |
			replacedNodes do: [ :aNode | 
					aNode value: number.
					(aNode propertyAt: #tNodeEquivalent) setValue: number
				].
			copy := aMethodNode copy.
			newName := copy selector , number asString.
			copy selector: newName.
			self addMethod: copy withInferer: inferer.
			bytecodeTable at: (bytecodeTable indexOf: selector) put: newName.
		].
	self halt.
]

{ #category : #adding }
MASlangProgram >> addMethod: aMethod withInferer: inferer [ 
	| copy needToBeRemovedFirst |
	copy := aMethod copy.
	needToBeRemovedFirst := self addMethod: copy. 
	"needToBeRemovedFirst is required because we manipulate a CCodeGenerator without using the proper API.
	Therefore, when adding a specialisation of a method, we need to remove it first from the CCg"
	needToBeRemovedFirst ifTrue: [ inferer removeMethodForSelector: aMethod selector ].
	inferer addMethod: (copy asTranslationMethodOfClass: TMethod)
]

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

{ #category : #initialization }
MASlangProgram >> initializeClassVariablesIn: inferer [
	"This initializationsOptions were taken from running the StackInterpreter code generation
	StackInterpreterClassSimulator class >> #initializeWithOptions:objectMemoryClass: before the call to #initializeOption"
	InitializationOptions := Dictionary new
		add: #Cogit -> #StackToRegisterMappingCogit;
		add: #COGMTVM -> false;
		add: #MULTIPLEBYTECODESETS -> true;
		add: #ObjectMemory -> #Spur64BitMemoryManager;
		add: #bytecodeTableInitializer
				-> #initializeBytecodeTableForSqueakV3PlusClosuresSistaV1Hybrid;
		yourself.
	
	ObjectMemory initializeWithOptions: InitializationOptions.
	inferer vmClass initializeWithOptions: InitializationOptions
]

{ #category : #enumerating }
MASlangProgram >> methodsFromClass: aClass [ 
	 ^ methods select: [ :aMethod | aMethod methodClass = aClass ]
]

{ #category : #accessing }
MASlangProgram >> prepareWithInferer: inferer inTranslator: aTranslator [

	self isFullyAnnotated ifTrue: [ ^ self ].
	
	"slang initialization"
	inferer vmClass: self vmClass.
	self initializeClassVariablesIn: inferer.
	
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
			each lookupSelector: aSelector ])
			select: [ :aMethod | (aTranslator shouldITranslate: aMethod) ]
			thenDo: [ :aMethod |
				(self shouldExpandMethod: aMethod)
					ifTrue: [ self addExpandedVersionsOf: aMethod ast with: inferer ]
					ifFalse: [ self addMethod: aMethod ast withInferer: inferer ]].
		each declareCVarsIn: inferer ].
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	aTranslator prepareMethodsASTs: (self methods "select: [:e| e methodClass ~~ StackInterpreter]").
	self isFullyAnnotated: true
]

{ #category : #removing }
MASlangProgram >> removeMethod: aMethodNode [
	methods removeKey: aMethodNode selector
]

{ #category : #preparation }
MASlangProgram >> shouldExpandMethod: aCompiledMethod [
	| ast |
	" see why in addExpandedVersionsOf: "
	^ aCompiledMethod hasPragmaNamed: #expandCases 
]

{ #category : #accessing }
MASlangProgram >> vmClass [
	
	^ StackInterpreter
]

{ #category : #accessing }
MASlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
