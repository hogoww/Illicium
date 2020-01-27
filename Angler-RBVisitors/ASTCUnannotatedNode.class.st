Class {
	#name : #ASTCUnannotatedNode,
	#superclass : #Error,
	#instVars : [
		'node'
	],
	#category : #'Angler-RBVisitors-Errors'
}

{ #category : #accessing }
ASTCUnannotatedNode >> description [ 
	^ String streamContents: [ :s|
		s print: node class ;
		 << ' wasn''t annotated with a type.'
		]
]

{ #category : #accessing }
ASTCUnannotatedNode >> node [
	^ node
]

{ #category : #accessing }
ASTCUnannotatedNode >> node: aNode [
	node := aNode
]
