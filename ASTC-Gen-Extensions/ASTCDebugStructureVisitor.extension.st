Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitASTCDeclarationStatement:anASTCDeclarationStatement [
	self visitASTCStatement:anASTCDeclarationStatement.

	"anASTCDeclarationStatement declaration ifNotNil:[ self assert:anASTCDeclarationStatement declaration isASTCDeclaration ]."

	super visitASTCDeclarationStatement:anASTCDeclarationStatement
]
