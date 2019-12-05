Extension { #name : #ASTCDebugStructureVisitor }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitDeclarationStatement: anASTCDeclarationStatement [
	self visitStatement: anASTCDeclarationStatement.

	"anASTCDeclarationStatement declaration ifNotNil:[ self assert:anASTCDeclarationStatement declaration isASTCDeclaration ]."

	super visitDeclarationStatement: anASTCDeclarationStatement
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitOperator: anOperator [
	super visitOperator: anOperator.
	anOperator operands
		ifNotNil:
			[ :operands | operands do: [ :anOperands | "self assert: anOperands isExpression" ] ]
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCDebugStructureVisitor >> visitType: anASTCType [
	self visitNode: anASTCType.

	self assert: anASTCType type isTypeConstraint.

	super visitType: anASTCType
]
