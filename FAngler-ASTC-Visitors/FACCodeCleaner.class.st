"
clean some bad idioms

Currently transforms: 
return;break; => return;
"
Class {
	#name : #FACCodeCleaner,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#category : #'FAngler-ASTC-Visitors-Modification'
}

{ #category : #visiting }
FACCodeCleaner >> visitBlock: aBlock [

	| encounteredReturn index |
	super visitBlock: aBlock.
	encounteredReturn := false.
	index := 1.
	[ encounteredReturn not and: [ index < aBlock statements size ]] whileTrue:[
		(aBlock statements at: index) isReturn
			ifTrue: [ 
				index := index - 1.
				encounteredReturn := true ].
		index := index + 1
		].

	(aBlock statements isNotEmpty 
		and: [ index ~= aBlock statements size ])
			ifTrue:[
				(aBlock statements at: index + 1) isBreak 
					ifTrue: [ aBlock statements removeLast ]
					ifFalse: [ self halt ].
				]
]
