Extension { #name : #MCMethodDefinition }

{ #category : #'*FAngler-Core' }
MCMethodDefinition class >> cachedDefinitions [
	^ Definitions
		ifNil: [ Definitions := FakeDictionary new ]
]
