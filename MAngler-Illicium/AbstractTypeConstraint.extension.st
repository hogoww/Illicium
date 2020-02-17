Extension { #name : #AbstractTypeConstraint }

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> asCType [
	^ self subclassResponsibility 
]

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> createInstance [
	^ self subclassResponsibility
]

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> performReplacementUsing: bindings [
	^ self subclassResponsibility 
]
