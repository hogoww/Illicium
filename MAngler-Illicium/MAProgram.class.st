Class {
	#name : #MAProgram,
	#superclass : #FAProgram,
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #preparation }
MAProgram >> addMethodAndClass: aMethod [
	classesToGenerate add: aMethod methodClass.
	self addMethod: aMethod.
]

{ #category : #adding }
MAProgram >> addRequiredClasses [
	| methodClasses |
	methodClasses := (methods collect: #methodClass into: Bag new).
	self flag: #dirty. "Needs a better heuristic.."
	classesToGenerate := (methodClasses
		select: [ :aClass | (classesToGenerate includes: aClass) or: [ { VMStackBuilder. VMFrameBuilder . VMMethodBuilder} includes: aClass  ] ]) 
			asSet asOrderedCollection.
]

{ #category : #preparation }
MAProgram >> addRequiredMethodUsing: inferer [
	| testMethods cgc requiredMethods|
	cgc := PICallGraphCalculator new
		inferer: inferer;
		addDoNotInferCriterium: [ :aMethod | aMethod methodClass includesBehavior: VMClass ];
		addDoNotInferCriterium: [ :aMethod | aMethod methodClass includesBehavior: Magnitude ];
		addDoNotInferCriterium: [ :aMethod | aMethod methodClass includesBehavior: String ];
		addDoNotInferCriterium: [ :aMethod | aMethod isPrimitive ];
		addDoNotInferCriterium: [ :aMethod | #( "new" new: basicNew basicNew: inSmalltalk:) includes: aMethod selector ];
		yourself.
	
	"add all the hierarchy to the scoping"
	"classesToGenerate do: [ :aClass | | class |
		class := aClass.
		[ class == aClass topClassToConsider ] whileFalse: [
			cgc addScopingClass: class.
			class := class superclass.
			]]."
	
	"try another approach: any class in the package might be relevant"
	"Behavior allows to use new"
	(RPackageOrganizer default packageNamed: #VMMakerTests) classes , { Behavior }
		do: [ :aClass | cgc addScopingClass: aClass; addScopingClass: aClass classSide ].

	requiredMethods := Set new.
	testMethods := methods copy.
	testMethods do: [ :aTestMethod | requiredMethods addAll: (cgc calculateCallGraphFrom: aTestMethod) ].
	requiredMethods select: [:m |m methodClass = Behavior].
	requiredMethods do: [ :aRequiredMethod | self addMethod: aRequiredMethod copy ifPresent: [ ] ].
]

{ #category : #'test-support' }
MAProgram >> addTestClassSetUpAndTeardownFor: aClass [ 

	self addMethod: (aClass lookupSelector: #setUp) ast copy.
	self addMethod: (aClass lookupSelector: #tearDown) ast copy
]

{ #category : #infering }
MAProgram >> inferMethod: aRBMethodNode [ 
	self shouldBeImplemented.
]

{ #category : #typing }
MAProgram >> inferMethod: aMethod with: inferer [
	| receiverClass |
	(aMethod hasPragmaNamed: #doNotInfer) ifTrue: [ ^ self ].
	receiverClass := self receiverClassFor: aMethod.
	inferer inferAST: aMethod withReceiverType: receiverClass.
]

{ #category : #'type inference' }
MAProgram >> inferMethodsWith: inferer [
	methods do: [ :aMethod | self inferMethod: aMethod with: inferer]
]

{ #category : #preparation }
MAProgram >> prepareWithInferer: inferer inTranslator: translator [
	
	self inferMethodsWith: inferer.
	self addRequiredMethodUsing: inferer.
	
	self addRequiredClasses.
	self registerCTypesForClassesToTranslate.
	
	self removeAccessors.
	self removeDoNotGenerate. "we need them for type inference"
	methods do:[ :aMethod | translator annotateMethodAST: aMethod ].
]

{ #category : #querying }
MAProgram >> receiverClassFor: aMethod [
	| res |
	"precondition: every class is the lowest in its hierarchy, two classes aren't part of the same hierarchy.
	Also, we check that there is no conflict, otherwise we stop and someone should check why."
	classesToGenerate do: [ :aClass | 
		res ifNotNil: [ self error: 'conflict, requires to be checked' ].
		(aClass includesBehavior: aMethod methodClass) ifTrue: [ res := aClass]].
	^ res
]

{ #category : #preparation }
MAProgram >> registerCType: aClass [
	CType registerType: aClass name forClass: aClass.
	(aClass allSuperclassesIncluding: aClass topClassToConsider)
		do: [ :class | 
			CType registerType: aClass name forClass: class.
			]
]

{ #category : #preparation }
MAProgram >> registerCTypesForClassesToTranslate [
	classesToGenerate do: [ :aClass | self registerCType: aClass ]

]

{ #category : #preparation }
MAProgram >> removeAccessors [
	methods := methods select: [ :m | m protocol ~= #accessing ]
]

{ #category : #preparation }
MAProgram >> removeDoNotGenerate [
	methods := methods select: [ :method | 
		(method hasPragmaNamed: #doNotGenerate) not ].
]
