Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Core-Extensions' }
ASTCDebugStructureVisitor >> visitType: anASTCType [
	self visitNode: anASTCType.

	self assert: anASTCType type isTypeConstraint.

	super visitType: anASTCType
]
