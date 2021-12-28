Extension { #name : #MetacelloLoadData }

{ #category : #'*FAngler-Core' }
MetacelloLoadData >> dataMap [

	dataMap == nil ifTrue: [ dataMap := FakeDictionary new ].
	^dataMap
]

{ #category : #'*FAngler-Core' }
MetacelloLoadData >> versionInfoMap [

	versionInfoMap == nil ifTrue: [ versionInfoMap := FakeDictionary new ].
	^versionInfoMap
]
