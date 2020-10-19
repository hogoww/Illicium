Class {
	#name : #MAProgram,
	#superclass : #FAProgram,
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #preparation }
MAProgram >> addRequiredMethodUsing: inferer [
	| testMethods cgc |
	cgc := PICallGraphCalculator new
		inferer: inferer;
		addDoNotInferCriterium: [ :aMethod | aMethod methodClass includesBehavior: VMClass ];
		addDoNotInferCriterium: [ :aMethod | aMethod methodClass includesBehavior: Magnitude ];
		addDoNotInferCriterium: [ :aMethod | #(new new: basicNew: inSmalltalk:) includes: aMethod selector ];
		yourself.
	
	"add all the hierarchy to the scoping"
	classesToGenerate do: [ :aClass | | class |
		class := aClass.
		[ class == aClass topClassToConsider ] whileFalse: [
			cgc addScopingClass: class.
			class := class superclass.
			]].
		
	testMethods := methods copy.
	testMethods do:[ :aTestMethod | | requiredMethods |
		cgc resetMethodsInCallGraph.
		requiredMethods := cgc calculateCallGraphFrom: aTestMethod.
		"We add all of the methods found. 
		They can be redoundancy, so we do not trigger an error if a method was already added"
		requiredMethods do: [ :aRequiredMethod | self addMethod: aRequiredMethod copy ifPresent: [ ] ] ].
]

{ #category : #'type inference' }
MAProgram >> inferMethodsWith: inferer [
	methods do: [ :aMethod | 
		(aMethod hasPragmaNamed: #doNotInfer) 
			ifFalse: [ inferer infer: aMethod ] ].
]

{ #category : #preparation }
MAProgram >> prepareWithInferer: inferer inTranslator: translator [
	"we first infer the methods that were added (should be the tests, setup & tearDown)
	Calculate the call graph starting from them
	Then infer all of the required method to run a test."
	self registerCTypesForClassesToTranslate.
	
	self inferMethodsWith: inferer.
	self addRequiredMethodUsing: inferer.
	self inferMethodsWith: inferer.
	
	self removeAccessors.
	self removeDoNotGenerate. "we need them for type inference"
	methods do:[ :aMethod | translator annotateMethodAST: aMethod ].
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
MAProgram >> registerCTypesForClassesToTranslate [.
	classesToGenerate do: [ :aClass | self registerCType: aClass ]

]

{ #category : #preparation }
MAProgram >> removeAccessors [.
	methods removeAllSuchThat: [ :m | m protocol = #accessing ].
]

{ #category : #preparation }
MAProgram >> removeDoNotGenerate [
	methods removeAllSuchThat: [ :m | m hasPragmaNamed: #doNotGenerate ].
]
