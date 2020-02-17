Class {
	#name : #UnannotatedNode,
	#superclass : #Error,
	#instVars : [
		'node'
	],
	#category : #'Angler-Core-errors'
}

{ #category : #accessing }
UnannotatedNode >> description [ 
	^ String streamContents: [ :s|
		s print: node class ;
		 << ' wasn''t annotated with a type.'
		]
]

{ #category : #accessing }
UnannotatedNode >> node [
	^ node
]

{ #category : #accessing }
UnannotatedNode >> node: aNode [
	node := aNode
]
