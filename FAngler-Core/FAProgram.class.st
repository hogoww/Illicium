Class {
	#name : #FAProgram,
	#superclass : #Object,
	#instVars : [
		'methods',
		'isFullyAnnotated',
		'classesToGenerate'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #accessing }
FAProgram >> addClass: aClass [

	classesToGenerate add: aClass.

	"(aClass allSelectorsBelow: VMClass) 
		do: [:aSelector ||aMethod|
			aMethod := (aClass lookupSelector: aSelector).
			(self methodNeedAdding: aMethod) ifTrue: [ self addMethod: (aClass lookupSelector: aSelector) ]]."
]

{ #category : #accessing }
FAProgram >> addMethod: aMethod [
	"this returns a boolean, which tells if the method should be removed from the cCodeGenerator before being added."
	"It's not good, but idk what else to do for now."
	
	methods at: aMethod selector
		ifPresent: [ :conflicting | "if the conflicting method is further down the hierarchy, we take it" 
			(aMethod methodClass includesBehavior: conflicting methodClass)
				ifTrue: [ methods at: aMethod selector put: aMethod ]
				ifFalse: [ self halt. ]. "otherwise, two methods have the same name. Not sure what to do yet."
				^ true
			]
		ifAbsentPut: [ aMethod ].
	^ false 
]

{ #category : #enumeration }
FAProgram >> classes [

	^ classesToGenerate
]

{ #category : #enumeration }
FAProgram >> classesDo: aBlockClosure [ 
	
	^ self classes do: aBlockClosure
]

{ #category : #testing }
FAProgram >> hasMethodNamed: aSelector [
	^ methods includesKey: aSelector
]

{ #category : #accessing }
FAProgram >> initialize [
	super initialize.
	classesToGenerate := OrderedCollection new.
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
FAProgram >> methodNamed: aSelector [

	^ methods at: aSelector ifAbsent: [ 
		classesToGenerate do: [ :each | 
			(each lookupSelector: aSelector) ifNotNil: [ :found |
				^ methods at: aSelector put: found ast copy ] ] ]
]

{ #category : #accessing }
FAProgram >> methods [
	^ methods values
]

{ #category : #accessing }
FAProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]
