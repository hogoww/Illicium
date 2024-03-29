Extension { #name : #AbstractTypeConstraint }

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> asCType [
	^ self subclassResponsibility
]

{ #category : #'*MAngler-Illicium' }
AbstractTypeConstraint >> asCTypeNode [
	^ ASTCType new type: self ; yourself
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
