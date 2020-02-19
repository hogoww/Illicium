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

{ #category : #properties }
FAProgram class >> isAnnotatedProperty [
	^ #isAnnotated
]

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
	"aMethod isSubclassResponsibility ifTrue: [ ^ self ]."
	methods at: aMethod selector
		ifPresent: [ :conflicting | self halt ]
		ifAbsentPut: [ aMethod ]
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

{ #category : #testing }
FAProgram >> methodNeedAdding: aMethod [
	(aMethod hasPragmaNamed: #doNotGenerate) ifTrue: [ ^ false ].
	^ true
]

{ #category : #accessing }
FAProgram >> methods [
	^ methods values
]

{ #category : #accessing }
FAProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]

{ #category : #accessing }
FAProgram >> methodsNeedingAnnotation [
	self wasModifiedSinceLastCheck ifFalse:[ ^ {} ].
	^ methods reject: [:anAssociation| anAssociation value propertyAt: self class isAnnotatedProperty ]
		thenCollect: [:anAssociation| anAssociation value ]
]
