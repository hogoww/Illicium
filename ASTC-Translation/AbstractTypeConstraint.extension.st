Extension { #name : #AbstractTypeConstraint }

{ #category : #'*ASTC-Translation' }
AbstractTypeConstraint >> createInstance [
	^ self subclassResponsibility
]

{ #category : #'*ASTC-Translation' }
AbstractTypeConstraint >> performReplacementUsing: bindings [
	^ self subclassResponsibility 
]
