Class {
	#name : #ANProgram,
	#superclass : #Object,
	#instVars : [
		'methods',
		'isFullyAnnotated',
		'wasTouchedSinceLastCheck'
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
	wasTouchedSinceLastCheck := true.
	methodCopy := aMethod ast copy.
	methodCopy propertyAt: self class isAnnotatedProperty put: false.
	methods add: methodCopy
]

{ #category : #testing }
ANProgram >> hasMethodNamed: aSelector [
  ^methods anySatisfy: [:aCompiledMethod |  aCompiledMethod selector = aSelector ]
]

{ #category : #accessing }
ANProgram >> initialize [
	super initialize.
	methods := Set new.
	isFullyAnnotated := false.
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated [
	self wasTouchedSinceLastCheck ifFalse:[ ^ isFullyAnnotated ]
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated: aBoolean [
	isFullyAnnotated := aBoolean
]

{ #category : #accessing }
ANProgram >> methodNamed: aSelector [
  ^methods detect: [:e |  e selector = aSelector ]
]

{ #category : #testing }
ANProgram >> methodNeedAdding: aMethod [
	(aMethod hasPragmaNamed: #doNotGenerate) ifTrue: [ ^ false ].
	^ true
]

{ #category : #accessing }
ANProgram >> methods [
	^ methods
]

{ #category : #accessing }
ANProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]

{ #category : #accessing }
ANProgram >> methodsNeedingAnnotation [
	self wasTouchedSinceLastCheck ifFalse:[ ^ {} ].
	^ methods select: [:aMethod| aMethod hasProperty: self class isAnnotatedProperty ]
]

{ #category : #accessing }
ANProgram >> wasTouchedSinceLastCheck [
	^ wasTouchedSinceLastCheck
]
