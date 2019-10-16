Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitDeclarationStatement: anASTCDeclarationStatement [
	self visitStatement: anASTCDeclarationStatement.

	"anASTCDeclarationStatement declaration ifNotNil:[ self assert:anASTCDeclarationStatement declaration isASTCDeclaration ]."

	super visitDeclarationStatement: anASTCDeclarationStatement
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitType: anASTCType [
	self visitNode: anASTCType.

	self assert: anASTCType type isClass.

	super visitType: anASTCType
]
