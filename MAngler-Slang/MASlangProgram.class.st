Class {
	#name : #MASlangProgram,
	#superclass : #FAProgram,
	#instVars : [
		'includes'
	],
	#classVars : [
		'InitializationOptions'
	],
	#category : #'MAngler-Slang-Translation'
}

{ #category : #adding }
MASlangProgram >> addCMacro: aMethod withInferer: inferer [
	"add methods that are tagged to be translated as cMacro by a pragma"
	
	"we only add them in the inferer to have correct types currently. 
	They will have to be translated correctly as well at some point"
	self flag: #unfinished.
	(inferer methodNamed: aMethod selector) ifNotNil: [ inferer removeMethodForSelector: aMethod selector].
	inferer addMethod: (aMethod copy asTranslationMethodOfClass: TMethod)
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

{ #category : #'method-expansion' }
MASlangProgram >> includes [
	^ includes
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

{ #category : #accessing }
MASlangProgram >> interpreterClass [
	^ StackInterpreter
]

{ #category : #enumerating }
MASlangProgram >> methodsFromClass: aClass [ 
	 ^ methods select: [ :aMethod | aClass includesBehavior: aMethod methodClass ]
]

{ #category : #accessing }
MASlangProgram >> prepareWithInferer: inferer inTranslator: aTranslator [

	self isFullyAnnotated ifTrue: [ ^ self ].
	
	"slang initialization"
	inferer vmClass: self vmClass.
	self initializeClassVariablesIn: inferer.
	self structClasses do:[ :aStructClass | aStructClass initialize ].
	
	self classesDo: [ :each |
		each prepareToBeAddedToCodeGenerator: inferer.
		inferer checkClassForNameConflicts: each.
		each declareCVarsIn: inferer.
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
				(aTranslator isCMacro: aMethod)
					ifTrue:[ self addCMacro: aMethod ast withInferer: inferer ]
					ifFalse: [ 
						(self shouldExpandMethod: aMethod)
							ifTrue: [ self addExpandedVersionsOf: aMethod ast with: inferer ]
							ifFalse: [ self addMethod: aMethod ast withInferer: inferer ]]].
		].
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	aTranslator prepareMethodsASTs: (self methods "select: [:e| e methodClass ~~ StackInterpreter]").
	
	self structClasses do:[ :aStructClass| inferer addStructClass: aStructClass ].

	inferer addHeaderFile: '"sq.h"'."added systematically"
	includes := inferer headerFiles.
	
	self isFullyAnnotated: true
]

{ #category : #removing }
MASlangProgram >> removeMethod: aMethodNode [
	methods removeKey: aMethodNode selector
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

{ #category : #enumerating }
MASlangProgram >> structClasses [
	^ (self interpreterClass ancilliaryClasses select: [ :aClass| aClass isStructClass ]),
		(self interpreterClass objectMemoryClass ancilliaryClasses select: [ :aClass| aClass isStructClass ])
]

{ #category : #accessing }
MASlangProgram >> structNamed: aStructName [
	^ self structClasses detect: [ :aClass | aClass structTypeName = aStructName  ]
]

{ #category : #accessing }
MASlangProgram >> vmClass [
	
	^ StackInterpreter
]

{ #category : #accessing }
MASlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
