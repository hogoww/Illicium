Class {
	#name : #ANSlangInliner,
	#superclass : #Object,
	#category : #'Angler-Slang'
}

{ #category : #applying }
ANSlangInliner >> applyOnMethod: aMethodNode ofProgram: aProgram [ 
	aMethodNode nodesDo: [:aNode|
		(aNode isMessage and: [ aProgram containsMethodNamed: aNode selector ] )
			ifTrue:[ 
				self inline:( aProgram methodNamed: aNode selector) insteadOf: aNode
				]
		 ].
	^ aMethodNode
]

{ #category : #inlining }
ANSlangInliner >> inline: aMethodNode insteadOf: aMessageNode [ 
	aMessageNode replaceWith: aMethodNode statements first
]
