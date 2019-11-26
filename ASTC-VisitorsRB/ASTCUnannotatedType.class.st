Class {
	#name : #ASTCUnannotatedType,
	#superclass : #Error,
	#instVars : [
		'node'
	],
	#category : #'ASTC-VisitorsRB-Errors'
}

{ #category : #accessing }
ASTCUnannotatedType >> description [ 
	^ String streamContents: [ :s|
		s print: node class ;
		 << ' wasn''t annotated with a type.'
		]
]

{ #category : #accessing }
ASTCUnannotatedType >> node [
	^ node
]

{ #category : #accessing }
ASTCUnannotatedType >> node: aNode [
	node := aNode
]
