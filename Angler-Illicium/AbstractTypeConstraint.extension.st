Extension { #name : #AbstractTypeConstraint }

{ #category : #'*Angler-Illicium' }
AbstractTypeConstraint >> asCType [
	^ self subclassResponsibility 
]

{ #category : #'*Angler-Illicium' }
AbstractTypeConstraint >> createInstance [
	^ self subclassResponsibility
]

{ #category : #'*Angler-Illicium' }
AbstractTypeConstraint >> performReplacementUsing: bindings [
	^ self subclassResponsibility 
]
