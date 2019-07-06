Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitASTCDeclarationStatement:anASTCDeclarationStatement [
	self visitASTCStatement:anASTCDeclarationStatement.

	"anASTCDeclarationStatement declaration ifNotNil:[ self assert:anASTCDeclarationStatement declaration isASTCDeclaration ]."

	super visitASTCDeclarationStatement:anASTCDeclarationStatement
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitASTCType:anASTCType [
	self visitASTCNode:anASTCType.

	self assert: anASTCType type isClass.

	super visitASTCType:anASTCType
]
