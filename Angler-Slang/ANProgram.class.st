Class {
	#name : #ANProgram,
	#superclass : #Object,
	#instVars : [
		'methods'
	],
	#category : #'Angler-Slang'
}

{ #category : #accessing }
ANProgram >> addMethod: aMethod [
	methods add: aMethod ast copy
]

{ #category : #testing }
ANProgram >> containsMethodNamed: aSelector [
  ^methods anySatisfy: [:aCompiledMethod |  aCompiledMethod selector = aSelector ]
]

{ #category : #accessing }
ANProgram >> initialize [
	super initialize.
	methods := Set new.
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
