Class {
	#name : #IlliciumPhineasTypeAnnotatorNewHeusistic,
	#superclass : #IlliciumPhineasTypeAnnotator,
	#category : #'MAngler-Illicium-Analysis'
}

{ #category : #visiting }
IlliciumPhineasTypeAnnotatorNewHeusistic >> visitAssignmentNode: anAssignmentNode [
	
	super visitAssignmentNode: anAssignmentNode.
	(anAssignmentNode value isMessage and: [ anAssignmentNode value selector = #new ])
		ifFalse:[ ^ self ].
		
	"When it's a collection's new, we need the type information from the inference that happened on the variables.
	The message's type however doesn't contain type informations for the values of the collections"
	self atNewPropertyPut: (self atNodeProperty: anAssignmentNode variable) for: anAssignmentNode value.
]
