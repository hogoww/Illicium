Class {
	#name : #MASlangCleaner,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program',
		'inlinedSomething'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #cleaning }
MASlangCleaner >> applyOnMethod: aMethodNode ofProgram: anANProgram [ 
	| node |
	aMethodNode statements size > 1 ifFalse: [ ^ self ].
	
	node := aMethodNode statements first.
	(node isMessage and: [ node selector = #flag: ])
		ifTrue: [ aMethodNode remove: node ].
	^ aMethodNode
]
