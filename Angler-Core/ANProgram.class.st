Class {
	#name : #ANProgram,
	#superclass : #Object,
	#instVars : [
		'methods',
		'isFullyAnnotated',
		'classesToGenerate'
	],
	#category : #'Angler-Core'
}

{ #category : #properties }
ANProgram class >> isAnnotatedProperty [
	^ #isAnnotated
]

{ #category : #accessing }
ANProgram >> addClass: aClass [

	classesToGenerate add: aClass.

	"(aClass allSelectorsBelow: VMClass) 
		do: [:aSelector ||aMethod|
			aMethod := (aClass lookupSelector: aSelector).
			(self methodNeedAdding: aMethod) ifTrue: [ self addMethod: (aClass lookupSelector: aSelector) ]]."
]

{ #category : #accessing }
ANProgram >> addMethod: aMethod [
	"aMethod isSubclassResponsibility ifTrue: [ ^ self ]."
	methods at: aMethod selector
		ifPresent: [ :conflicting | self halt ]
		ifAbsentPut: [ aMethod methodNode ]
]

{ #category : #enumeration }
ANProgram >> classes [

	^ classesToGenerate
]

{ #category : #enumeration }
ANProgram >> classesDo: aBlockClosure [ 
	
	^ self classes do: aBlockClosure
]

{ #category : #testing }
ANProgram >> hasMethodNamed: aSelector [
	^ methods includesKey: aSelector
]

{ #category : #accessing }
ANProgram >> initialize [
	super initialize.
	classesToGenerate := OrderedCollection new.
	methods := Dictionary new.
	isFullyAnnotated := false.
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated [
	^ isFullyAnnotated
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated: anObject [
	isFullyAnnotated := anObject
]

{ #category : #accessing }
ANProgram >> methodNamed: aSelector [

	^ methods at: aSelector ifAbsent: [ 
		classesToGenerate do: [ :each | 
			(each lookupSelector: aSelector) ifNotNil: [ :found |
				^ methods at: aSelector put: found ast copy ] ] ]
]

{ #category : #testing }
ANProgram >> methodNeedAdding: aMethod [
	(aMethod hasPragmaNamed: #doNotGenerate) ifTrue: [ ^ false ].
	^ true
]

{ #category : #accessing }
ANProgram >> methods [
	^ methods values
]

{ #category : #accessing }
ANProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]

{ #category : #accessing }
ANProgram >> methodsNeedingAnnotation [
	self wasModifiedSinceLastCheck ifFalse:[ ^ {} ].
	^ methods reject: [:anAssociation| anAssociation value propertyAt: self class isAnnotatedProperty ]
		thenCollect: [:anAssociation| anAssociation value ]
]
