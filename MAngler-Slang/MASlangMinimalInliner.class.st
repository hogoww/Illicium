Class {
	#name : #MASlangMinimalInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangMinimalInliner >> shouldInline: aMessageNode [
	
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	"methodToInline := program methodNamed: aMessageNode selector."
	
	(translator class isSpecialSelector: aMessageNode selector) ifTrue: [ ^ false ].
	
	"Requires to be last, or to have a discrimination list for system selectors (iftrue...)
	This should therefore forget some inlines: mySpecialDoThatIsNotInAVMClass: aBlock"
	^ aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]
]
