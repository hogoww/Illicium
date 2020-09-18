Class {
	#name : #FAProgram,
	#superclass : #Object,
	#instVars : [
		'name',
		'methods',
		'isFullyAnnotated',
		'classesToGenerate',
		'dependencies',
		'includes'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #adding }
FAProgram >> addClass: aClass [

	classesToGenerate add: aClass.
	
	(aClass includesBehavior: TestCase) ifTrue:[ ^ self addTestClass: aClass ].
	
	self flag: #todo.
	^ self addRegularClass: aClass
]

{ #category : #adding }
FAProgram >> addDependency: aProgram [
	self methods keysDo: [ :aMethod | 
		(aProgram hasMethodNamedAnywhere: aMethod)
			ifTrue:[ MethodExistsInDependency new methodSelector: aMethod ; signal ]
		].
	dependencies add: aProgram
]

{ #category : #adding }
FAProgram >> addInclude: aString [
	includes add: aString
]

{ #category : #adding }
FAProgram >> addMethod: aMethod [
	"This expects a *copy* as argument."
	
	"This returns a boolean, which means that the method overrode an existing method"
	"see MASlangMethodTranslator >> #addMethod:withInferer:"

	self checkDependenciesFor: aMethod.
		
	methods at: aMethod selector
		ifPresent: [ :conflicting | "if the conflicting method is further down the hierarchy, we take it" 
			(self shouldOverride: conflicting with: aMethod)
				ifTrue: [
					methods at: aMethod selector put: aMethod.
					^ true "method has overriden another one"
					]
				ifFalse: [ MethodWasAlreadyAdded new methodSelector: aMethod selector ; signal ]. "otherwise, two methods have the same name. Not sure what to do yet."
			]
		ifAbsentPut: aMethod.
	^ false "method was ignored"
]

{ #category : #adding }
FAProgram >> addRegularClass: aClass [ 
    (aClass allSelectorsBelow: Object) 
        do: [ :aSelector | | m |
            m :=  (aClass lookupSelector: aSelector).
            (m hasPragmaNamed: #doNotGenerate) 
            ifFalse: [ self addMethod: m ast copy ] ]
]

{ #category : #adding }
FAProgram >> addTestClass: aClass [
	| selectors |
	self flag: #hackForQuickFeedback.
	selectors := (aClass inheritsFrom: VMSpurMemoryManagerTest) ifTrue:[ aClass allSelectorsBelow: VMSpurMemoryManagerTest ].
	selectors := selectors ifNil: [ (aClass inheritsFrom: ParametrizedTestCase) ifTrue:[ aClass allSelectorsBelow: ParametrizedTestCase ]].
	selectors := selectors ifNil: [ (aClass inheritsFrom: TestCase) ifTrue:[ aClass allSelectorsBelow: TestCase ]].
	selectors ifNil:  [ self error: 'not a known test class' ].
	selectors 
		do: [ :aMethod | self addMethod: (aClass lookupSelector: aMethod) ast copy ]
]

{ #category : #dependencies }
FAProgram >> checkDependenciesFor: aMethod [
	"We assume that a dependency is immutable"
	(aMethod hasPragmaNamed: #notRealDuplicate) ifTrue:[ ^ self ].
	(self dependenciesHaveMethodNamed: aMethod selector)
		ifTrue:[ MethodExistsInDependency new methodSelector: aMethod selector ; signal ].
]

{ #category : #accessing }
FAProgram >> classes [
	^ classesToGenerate
]

{ #category : #enumeration }
FAProgram >> classesDo: aBlockClosure [ 
	
	^ self classes do: aBlockClosure
]

{ #category : #testing }
FAProgram >> dependenciesHaveMethodNamed: aSelector [
	^ dependencies anySatisfy: [ :aProgram | aProgram hasMethodNamedAnywhere: aSelector ]
]

{ #category : #testing }
FAProgram >> hasMethodNamed: aSelector [ 
	^ (methods includesKey: aSelector)
]

{ #category : #testing }
FAProgram >> hasMethodNamedAnywhere: aSelector [
	"we check everywhere in this one."
	^ (self hasMethodNamed: aSelector)
		or:[ self dependenciesHaveMethodNamed: aSelector]
]

{ #category : #'method-expansion' }
FAProgram >> includes [
	^ includes
]

{ #category : #initialization }
FAProgram >> initialize [
	super initialize.
	includes := Set new.
	classesToGenerate := OrderedCollection new.
	dependencies := OrderedCollection new.
	methods := Dictionary new.
	isFullyAnnotated := false.

]

{ #category : #accessing }
FAProgram >> isFullyAnnotated [
	^ isFullyAnnotated
]

{ #category : #accessing }
FAProgram >> isFullyAnnotated: anObject [
	isFullyAnnotated := anObject
]

{ #category : #accessing }
FAProgram >> methodFor: aSelector [
	^ self methodNamedAnywhere: aSelector
]

{ #category : #accessing }
FAProgram >> methodNamed: aSelector [
	^ methods at: aSelector ifAbsent: [ self error: 'methodNotFound' ] 
]

{ #category : #accessing }
FAProgram >> methodNamed: aSelector ifAbsent: anAbsentBlock [

	^ methods at: aSelector ifAbsent: anAbsentBlock
]

{ #category : #accessing }
FAProgram >> methodNamedAnywhere: aSelector [
	^ methods at: aSelector ifAbsent: [ self methodNamedInDependency: aSelector ]
]

{ #category : #accessing }
FAProgram >> methodNamedInDependency: aSelector [
	dependencies do: [ :aProgram |
		(aProgram methodNamedAnywhere: aSelector) 
			ifNotNil: [ :aMethod | ^ aMethod ] ].
	^ nil
]

{ #category : #accessing }
FAProgram >> methods [
	^ methods
]

{ #category : #accessing }
FAProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]

{ #category : #accessing }
FAProgram >> name [
	^ name
]

{ #category : #accessing }
FAProgram >> name: aName [
	name := aName
]

{ #category : #removing }
FAProgram >> removeSelector: aSelector [
	methods removeKey: aSelector 
]

{ #category : #accessing }
FAProgram >> shouldOverride: conflicting with: aReplacement [
	"by default, we never override a method"
	^ false
]
