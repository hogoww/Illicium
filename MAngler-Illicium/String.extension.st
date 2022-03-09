Extension { #name : #String }

{ #category : #'*MAngler-Illicium' }
String >> asIceRepository [
	^ IceRepository registry detect: [ :r | r name = self ]
]
