Class {
	#name : #MASlangMinimalInliner,
	#superclass : #MASlangAbstractInliner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #inlining }
MASlangMinimalInliner >> shouldInline: aMessageNode [
	^ aMessageNode receiver isSuper
		or: [ aMessageNode arguments anySatisfy: [ :anArg| anArg isBlock ] ]
]
