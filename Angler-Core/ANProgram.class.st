Class {
	#name : #ANProgram,
	#superclass : #Object,
	#instVars : [
		'methods',
		'wasModifiedSinceLastCheck'
	],
	#category : #'Angler-Core'
}

{ #category : #properties }
ANProgram class >> isAnnotatedProperty [
	^ #isAnnotated
]

{ #category : #accessing }
ANProgram >> addClass: aClass [
	(aClass allSelectorsBelow: VMClass) 
		do: [:aSelector ||aMethod|
			aMethod := (aClass lookupSelector: aSelector).
			(self methodNeedAdding: aMethod) ifTrue: [ self addMethod: (aClass lookupSelector: aSelector) ]].
]

{ #category : #accessing }
ANProgram >> addMethod: aMethod [
	| methodCopy |
	aMethod isSubclassResponsibility ifTrue: [ ^ self ].
  
  methods at: aMethod selector
		ifPresent: [ :conflicting | self halt ]
		ifAbsentPut: [
	    wasModifiedSinceLastCheck:= true.
	    methodCopy := aMethod ast copy.
	    methodCopy propertyAt: self class isAnnotatedProperty put: false.
      methods add: methodCopy 
  ]
]

{ #category : #testing }
ANProgram >> hasMethodNamed: aSelector [
	^ methods includesKey: aSelector
]

{ #category : #accessing }
ANProgram >> initialize [
	super initialize.
	wasModifiedSinceLastCheck := true. "No check was done yet"
	methods := Dictionary new.
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

{ #category : #accessing }
ANProgram >> methodsNeedingAnnotation [
	self wasModifiedSinceLastCheck ifFalse:[ ^ {} ].
	^ methods reject: [:aMethod| aMethod propertyAt: self class isAnnotatedProperty ]
]

{ #category : #accessing }
ANProgram >> wasModifiedSinceLastCheck [
	^ wasModifiedSinceLastCheck
]

{ #category : #accessing }
ANProgram >> wasModifiedSinceLastCheck: aBoolean [
	wasModifiedSinceLastCheck := aBoolean
]
