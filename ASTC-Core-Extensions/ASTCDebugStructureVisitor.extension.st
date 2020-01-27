Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Core-Extensions' }
ASTCDebugStructureVisitor >> visitDeclarationStatement: anASTCDeclarationStatement [
	self visitStatement: anASTCDeclarationStatement.

	"anASTCDeclarationStatement declaration ifNotNil:[ self assert:anASTCDeclarationStatement declaration isDeclaration ]."

	super visitDeclarationStatement: anASTCDeclarationStatement
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCDebugStructureVisitor >> visitType: anASTCType [
	self visitNode: anASTCType.

	self assert: anASTCType type isTypeConstraint.

	super visitType: anASTCType
]
