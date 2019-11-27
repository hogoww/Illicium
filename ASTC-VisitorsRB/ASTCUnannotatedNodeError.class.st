Class {
	#name : #ASTCUnannotatedNodeError,
	#superclass : #Error,
	#instVars : [
		'node'
	],
	#category : #'ASTC-VisitorsRB-Errors'
}

{ #category : #accessing }
ASTCUnannotatedNodeError >> description [ 
	^ String streamContents: [ :s|
		s print: node class ;
		 << ' wasn''t annotated with a type.'
		]
]

{ #category : #accessing }
ASTCUnannotatedNodeError >> node [
	^ node
]

{ #category : #accessing }
ASTCUnannotatedNodeError >> node: aNode [
	node := aNode
]
