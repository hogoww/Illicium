Class {
	#name : #UnannotatedNode,
	#superclass : #Error,
	#instVars : [
		'node'
	],
	#category : #'FAngler-Core-Errors'
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
