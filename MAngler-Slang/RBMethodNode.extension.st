Extension { #name : #RBMethodNode }

{ #category : #'*MAngler-Slang' }
RBMethodNode >> anglerCalls [

	^ self propertyAt: #anglerCalls ifAbsent: [ 0 ]

]
