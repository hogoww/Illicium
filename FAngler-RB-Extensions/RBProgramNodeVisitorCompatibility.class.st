Class {
	#name : #RBProgramNodeVisitorCompatibility,
	#superclass : #RBProgramNodeVisitor,
	#category : #'FAngler-RB-Extensions'
}

{ #category : #'visiting - variables' }
RBProgramNodeVisitorCompatibility >> visitArgumentVariableNode: anArgument [
	^ self visitArgumentNode: anArgument

]
