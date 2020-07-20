Class {
	#name : #MASlangProgram,
	#superclass : #FAProgram,
	#instVars : [
		'slots',
		'constants'
	],
	#classVars : [
		'InitializationOptions'
	],
	#category : #'MAngler-Slang-Translation'
}

{ #category : #adding }
MASlangProgram >> addClass: aClass withInferer: inferer andTranslator: aTranslator [
	aClass prepareToBeAddedToCodeGenerator: inferer.
	inferer globalsAsSet addAll: (inferer instVarNamesForClass: aClass).
	self flag:#todo. "missing check if it's already in there"
	aClass slots do: [ :aSlot | slots at: aSlot name ifAbsentPut: aSlot ].

	self addClassOrStruct: aClass withInferer: inferer andTranslator: aTranslator.
]

{ #category : #adding }
MASlangProgram >> addClassOrStruct: aClass withInferer: inferer andTranslator: aTranslator [

	aClass declareCVarsIn: inferer.
	inferer addClassVarsFor: aClass.
	inferer addPoolVarsFor: aClass.
	inferer retainMethods: (aClass requiredMethodNames: inferer options).

	aClass methodDict values
		select: [ :aMethod | (aTranslator shouldITranslate: aMethod) ]
		thenDo: [ :aMethod |
			(self shouldExpandMethod: aMethod)
						ifTrue: [ self addExpandedVersionsOf: aMethod ast with: inferer ]
						ifFalse: [ self addMethod: aMethod ast withInferer: inferer ]].
]

{ #category : #'method-expansion' }
MASlangProgram >> addExpandedVersionsOf: aMethodNode with: inferer [
	| currentByteCodeReferences numberOfDuplication selector replacedNodes mainCopy bytecodeTable counter |
	"see  self class >> #shouldExpand for documentation"
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
		replacement := RBLiteralValueNode value: -1.
		replacement propertyAt: #tNodeEquivalent put: (TConstantNode new setValue: -1).
		aNode replaceWith: replacement.
		replacement ]." we collect the references of the node we replace, because we will change the values in the next iteration"
	
	0 to: numberOfDuplication - 1 do: [ :number |
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
	
	"when updating the secondary table, we assume that EACH selector appear MORE times in the first table. (which is bad)"
	counter := 0.
	256 to: bytecodeTable size do:[ :iterator | 
		(bytecodeTable at: iterator) = selector 
			ifTrue:[
					bytecodeTable at: (bytecodeTable indexOf: selector) put: selector , counter asString..
					counter := counter + 1.
				]
		].
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

{ #category : #adding }
MASlangProgram >> addStruct: aClass withInferer: inferer andTranslator: aTranslator [
	aClass prepareToBeAddedToCodeGenerator: inferer.
	self addClassOrStruct: aClass withInferer: inferer andTranslator: aTranslator.

]

{ #category : #accessing }
MASlangProgram >> classes [
	"should return the superclasses first"
	^ { self interpreterClass },
	(self interpreterClass ancilliaryClasses reject: [ :aClass| aClass isStructClass ]),
	(self interpreterClass objectMemoryClass ancilliaryClasses reject: [ :aClass| aClass isStructClass ])
	
]

{ #category : #accessing }
MASlangProgram >> classesToPrepareSelectorsFor [
	"should return the superclasses first"
	^ 	{ VMClass },
	(self interpreterClass allSuperclassesIncluding: InterpreterPrimitives) reverse,
	(self interpreterClass objectMemoryClass allSuperclassesIncluding: CogClass) reverse,
	self classes
]

{ #category : #accessing }
MASlangProgram >> constants [
	^ constants
]

{ #category : #initialization }
MASlangProgram >> initialize [
	super initialize.
	slots := Dictionary new
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
	
	Spur64BitMemoryManager initializeWithOptions: InitializationOptions.
	inferer vmClass initializeWithOptions: InitializationOptions
]

{ #category : #accessing }
MASlangProgram >> interpreterClass [
	^ StackInterpreterPrimitives
]

{ #category : #enumerating }
MASlangProgram >> methodsFromClass: aClass [
	"current heuristic, only VMClass's methods are shared accross vm component. They should not be translated"

	^ methods select: [ :aMethod | 
		aMethod methodClass ~= VMClass
			and: [ aClass includesBehavior: aMethod methodClass ] ]
]

{ #category : #enumerating }
MASlangProgram >> name [
	^ 'StackVM'
]

{ #category : #enumerating }
MASlangProgram >> name: aName [
	^ self shouldNotImplement
]

{ #category : #accessing }
MASlangProgram >> prepareWithInferer: inferer inTranslator: aTranslator [

	self isFullyAnnotated ifTrue: [ ^ self ].
	
	"slang initialization"
	inferer vmClass: self interpreterClass.
	self initializeClassVariablesIn: inferer.
	self structClasses do:[ :aStructClass | aStructClass initialize ].
	
	self classesToPrepareSelectorsFor do: [ :aClass | 
		self addClass: aClass withInferer: inferer andTranslator: aTranslator ].
	self structClasses do:[ :aStruct | 
		self addStruct: aStruct withInferer: inferer andTranslator: aTranslator ].
	
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	aTranslator prepareMethodsASTs: methods values.
	
	"self removeSlotsNotIn: inferer."
	constants := inferer constants.
	
	includes := inferer headerFiles.
	includes addFirst: '"sq.h"'."added systematically"
	
	
	self removeSlangWeirdSlots.
	
	self isFullyAnnotated: true
]

{ #category : #removing }
MASlangProgram >> removeMethod: aMethodNode [
	methods removeKey: aMethodNode selector
]

{ #category : #weird }
MASlangProgram >> removeSlangWeirdSlots [
	slots removeKey: #primitiveTable
]

{ #category : #accessing }
MASlangProgram >> removeSlotsNotIn: inferer [.
	"result seems a bit weird, so I deshactivate it for now
	as long as there is no inlining in the inferer, variables should not be localized, and we should still have the right set of variables"
	"having more variables declared **should** not change anything"

	"slots := slots select: [ :aSlot | inferer globalsAsSet includes: aSlot name. ]"
	self
]

{ #category : #'method-expansion' }
MASlangProgram >> shouldExpandMethod: aCompiledMethod [
	"In the Bytecode table, some selectors appears several times.
	When this is the case, they may either stay as is, or be expanded in several constant cases for the different values of currentByteCode.
	For example
	case 0:
	case 1:
		currentBytecode;
	will be expanded in:
	case 0:
		0;
	case 1:
		1;
	"
	
	^ aCompiledMethod hasPragmaNamed: #expandCases 
]

{ #category : #accessing }
MASlangProgram >> shouldOverride: aConflictingMethod with: aReplacementMethod [
	^ aReplacementMethod methodClass includesBehavior: aConflictingMethod methodClass
]

{ #category : #accessing }
MASlangProgram >> slots [
	^ slots
]

{ #category : #enumerating }
MASlangProgram >> structClasses [
	^ (self interpreterClass ancilliaryClasses select: [ :aClass| aClass isStructClass ]),
		(self interpreterClass objectMemoryClass ancilliaryClasses select: [ :aClass| aClass isStructClass ])
]

{ #category : #enumerating }
MASlangProgram >> structClassesToGenerate [
	"same hack in the current vm, see VMClass >> #shouldGenerateTypedefFor:" 
	^ self structClasses select: [ :aClass | aClass ~~ VMCallbackContext ]
]

{ #category : #accessing }
MASlangProgram >> structNamed: aStructName [
	^ self structClasses detect: [ :aClass | aClass structTypeName = aStructName  ]
]

{ #category : #accessing }
MASlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
