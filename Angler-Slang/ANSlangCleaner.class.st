Class {
	#name : #ANSlangCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething'
	],
	#category : #'Angler-Slang'
}

{ #category : #cleaning }
ANSlangCleaner >> applyOnMethod: aRBMethodNode ofProgram: anANProgram [ 
	| node |
	aRBMethodNode statements size > 1 ifFalse: [ ^ self ].

	node := aRBMethodNode statements first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ aRBMethodNode body removeNode: node ]
]
