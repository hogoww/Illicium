Class {
	#name : #MASlangCompleteInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangCompleteInliner >> shouldInline: aMessageNode [
	
	| methodToInline |
			
	(program hasMethodNamed: aMessageNode selector) ifFalse: [ ^ false ].
	
	methodToInline := program methodNamed: aMessageNode selector.
	
	methodToInline pragmaNamed: #inline:
		ifPresent: [:aPragma| (#(false never) includes: aPragma arguments first value) ifTrue: [ ^ false ] ].
	
	(aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]) 
			ifTrue: [ ^ true ].
	"A method with one of these caracteristic HAS to be inlined, as there is no C equivalent otherwise."
	"The method to inline may not exist, we'll get an error quickly regardless if that is the case"
	
	^ (translator isSpecialSelector: aMessageNode selector) not
		and: [ (methodToInline hasPragmaNamed: #cmacro) not
			and: [ (methodToInline hasPragmaNamed: #cmacro:) not ] ]
]
