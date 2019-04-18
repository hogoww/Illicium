Extension { #name : #RBProgramNode }

{ #category : #'*ASTC' }
RBProgramNode >> inferedConcreteClass [
	self halt.
	 ^ self type concreteClasses
]

{ #category : #'*ASTC' }
RBProgramNode >> type [
	^ self propertyAt: 'type'
]
