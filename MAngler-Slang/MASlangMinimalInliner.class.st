Class {
	#name : #MASlangMinimalInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangMinimalInliner >> shouldInline: aMessageNode [
	
	
	(aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]) 
			ifTrue: [ ^ true ].
	
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	"methodToInline := program methodNamed: aMessageNode selector."
	
	(translator isSpecialSelector: aMessageNode selector) ifTrue: [ ^ false ].
	
	^ false
]
