Extension { #name : #AbstractTypeConstraint }

{ #category : #'*Angler-Core' }
AbstractTypeConstraint >> asCType [
	^ self subclassResponsibility 
]

{ #category : #'*Angler-Core' }
AbstractTypeConstraint >> createInstance [
	^ self subclassResponsibility
]

{ #category : #'*Angler-Core' }
AbstractTypeConstraint >> performReplacementUsing: bindings [
	^ self subclassResponsibility 
]
