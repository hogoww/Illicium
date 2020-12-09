Class {
	#name : #MASlangMinimalInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangMinimalInliner >> shouldInline: aMessageNode [
	((program slots keys includes: aMessageNode selector) and: [ program hasMethodNamed: aMessageNode selector ]) ifTrue: [ ^ true ].
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	"methodToInline := program methodNamed: aMessageNode selector."

	(translator class isSpecialSelector: aMessageNode selector) ifTrue: [ ^ false ].

	self flag:#dirtyfix."translation relies on the fact that this is coded as a macro, don't know how to fix it better"
	aMessageNode selector = #sendBreakpoint:receiver: ifTrue:[ ^ true ].
	
	"Requires to be last, or to have a discrimination list for system selectors (iftrue...)
	This should therefore forget some inlines: mySpecialDoThatIsNotInAVMClass: aBlock"
	^ aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]
]
