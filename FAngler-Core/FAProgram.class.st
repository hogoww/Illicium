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
	^ self addMethod: aMethod 
		ifPresent: [ MethodWasAlreadyAdded new methodSelector: aMethod selector ; signal ]
]

{ #category : #adding }
FAProgram >> addMethod: aMethod ifPresent: aBlock [
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
				ifFalse: [ aBlock value ]. "otherwise, two methods have the same name. Not sure what to do yet."
			]
		ifAbsentPut: aMethod.
	^ false "method was ignored"
]

{ #category : #adding }
FAProgram >> addRegularClass: aClass [ 
    (aClass allSelectorsBelow: aClass topClassToConsider) 
        do: [ :aSelector | | m |
            m :=  (aClass lookupSelector: aSelector).
            (m hasPragmaNamed: #doNotGenerate) 
            ifFalse: [ self addMethod: m ast copy ] ]
]

{ #category : #adding }
FAProgram >> addTestClass: aClass [
	"we add only the setUp/tearDown/tests here, that will be our entry points.
	We then calculate the methods required to run those using phineas.
	see MAProgram >> #prepareWithInferer:inTranslator:"
	
	| selectors |
	selectors := aClass allSelectorsBelow: aClass topClassToConsider.
	selectors do: [ :aSelector | 
		(aSelector first: 4) = #test
			ifTrue:[ self addMethod: (aClass lookupSelector: aSelector) ast copy ]].
	
	self addTestClassSetUpAndTeardownFor: aClass.	
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
