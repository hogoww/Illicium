Extension { #name : #Behavior }

{ #category : #'*FAngler-Core' }
Behavior >> allSlotsBelow: topClass [ 
	| collection |
	collection := OrderedCollection new: self slots size .
	self withAllSuperclassesDo: 
			[:aClass | 
			aClass = topClass
				ifTrue: [ ^ collection ]
				ifFalse: [ collection addAll: aClass slots ] ].
	^ collection
	


]
