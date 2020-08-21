Extension { #name : #AbstractTypeConstraint }

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> asCType [
	^ self createCTypeIn: (CType new initialSymbol: #buildByAsCType ; yourself)
]

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> createCTypeIn: aCType [
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
