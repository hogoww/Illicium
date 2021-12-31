Extension { #name : #MCSnapshot }

{ #category : #'*FAngler-Core' }
MCSnapshot >> removeState [
	"Allows to remove everything, to reduce the size of an image to keep it as log"
	classDefinitionCache := nil.
	definitions := nil.
]
