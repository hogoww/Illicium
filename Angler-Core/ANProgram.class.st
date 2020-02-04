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
	aClass allMethods do: [:aMethod | self addMethod: aMethod ].
]

{ #category : #accessing }
ANProgram >> addMethod: aMethod [
	isFullyAnnotated := false.
	methods add: aMethod ast copy
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
	^ isFullyAnnotated
]

{ #category : #accessing }
ANProgram >> isFullyAnnotated: aBoolean [
	isFullyAnnotated := aBoolean
]

{ #category : #accessing }
ANProgram >> methodNamed: aSelector [
  ^methods detect: [:e |  e selector = aSelector ]
]

{ #category : #accessing }
ANProgram >> methods [
	^ methods
]

{ #category : #accessing }
ANProgram >> methodsDo: aBlockClosure [ 
	
	methods do: aBlockClosure 
]
