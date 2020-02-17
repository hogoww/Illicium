Class {
	#name : #MASlangCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething'
	],
	#category : #'MAngler-Slang-analysis'
}

{ #category : #cleaning }
MASlangCleaner >> applyOnMethod: aRBMethodNode ofProgram: anANProgram [ 
	| node |
	aRBMethodNode statements size > 1 ifFalse: [ ^ self ].

	node := aRBMethodNode statements first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ aRBMethodNode body removeNode: node ]
]
