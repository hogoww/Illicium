Extension { #name : #RBProgramNode }

{ #category : #'*ASTC' }
RBProgramNode >> inferedConcreteClass [
 ^ self type concreteClasses
]

{ #category : #'*ASTC' }
RBProgramNode >> type [
	^ self propertyAt: 'type'
]
