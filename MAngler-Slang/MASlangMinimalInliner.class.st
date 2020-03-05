Class {
	#name : #MASlangMinimalInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangMinimalInliner >> shouldInline: aMessageNode [
	
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	"methodToInline := program methodNamed: aMessageNode selector."
	
	(translator isSpecialSelector: aMessageNode selector) ifTrue: [ ^ false ].
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	
	^ aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]
]
