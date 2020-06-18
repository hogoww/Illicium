Class {
	#name : #FAProgram,
	#superclass : #Object,
	#instVars : [
		'name',
		'methods',
		'isFullyAnnotated',
		'classesToGenerate',
		'dependencies'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #adding }
FAProgram >> addClass: aClass [

	classesToGenerate add: aClass.

	"(aClass allSelectorsBelow: VMClass) 
		do: [:aSelector ||aMethod|
			aMethod := (aClass lookupSelector: aSelector).
			(self methodNeedAdding: aMethod) ifTrue: [ self addMethod: (aClass lookupSelector: aSelector) ]]."
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
FAProgram >> addMethod: aMethod [
	"This expects a *copy* as argument."
	
	"This returns a boolean, which means that the method overrode an existing method"
	"see MASlangMethodTranslator >> #addMethod:withInferer:"

	self checkDependenciesFor: aMethod selector.
		
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

{ #category : #dependencies }
FAProgram >> checkDependenciesFor: aSelector [
	"We assume that a dependency is immutable"
	(self dependenciesHaveMethodNamed: aSelector)
		ifTrue:[ MethodExistsInDependency new methodSelector: aSelector ; signal ].
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

{ #category : #accessing }
FAProgram >> initialize [
	super initialize.
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
	^ self methodNamed: aSelector ifAbsent: [ nil ]
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

{ #category : #accessing }
FAProgram >> shouldOverride: conflicting with: aReplacement [
	"by default, we never override a method"
	^ false
]
