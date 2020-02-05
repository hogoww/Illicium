Class {
	#name : #ANProgram,
	#superclass : #Object,
	#instVars : [
		'methods',
		'isFullyAnnotated'
	],
	#category : #'Angler-Core'
}

{ #category : #accessing }
ANProgram >> addClass: aClass [
	(aClass allSelectorsBelow: VMClass) 
		do: [:aSelector ||aMethod|
			aMethod := (aClass lookupSelector: aSelector).
			(self methodNeedAdding: aMethod) ifTrue: [ self addMethod: (aClass lookupSelector: aSelector) ]].
]

{ #category : #accessing }
ANProgram >> addMethod: aMethod [

	| conflict |
	aMethod isSubclassResponsibility ifTrue: [ ^ self ].
	
	methods at: aMethod selector
		ifPresent: [ :conflicting | self halt ]
		ifAbsentPut: [ aMethod ast copy ]
]

{ #category : #testing }
ANProgram >> hasMethodNamed: aSelector [

	^ methods includesKey: aSelector
]

{ #category : #accessing }
ANProgram >> initialize [
	super initialize.
	methods := Dictionary new.
	isFullyAnnotated := false.
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated [
	^ isFullyAnnotated
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated: aBoolean [
	isFullyAnnotated := aBoolean
]

{ #category : #accessing }
ANProgram >> methodNamed: aSelector [

	^ methods at: aSelector
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
