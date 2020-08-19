Extension { #name : #Array }

{ #category : #'*MAngler-Illicium' }
Array class >> new: sizeRequested of: aType [
	"Used for typing purposes. 
	Could be used as such: 
		Array new: 3 of: SmallInteger"
	^ self new: sizeRequested
]
