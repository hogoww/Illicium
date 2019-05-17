Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen-visitor'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCAbstractWhile: anASTCAbstractWhile [
	self walkASTCAbstractWhile: anASTCAbstractWhile.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCBlock: anASTCBlock [
	self walkASTCBlock: anASTCBlock.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCCompilationUnit: anASTCCompilationUnit [
	self walkASTCCompilationUnit: anASTCCompilationUnit.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDeclaration: anASTCDeclaration [
	self walkASTCDeclaration: anASTCDeclaration.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDeclarationStatement: anASTCDeclarationStatement [
	self walkASTCDeclarationStatement: anASTCDeclarationStatement.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDefinition: anASTCDefinition [
	self walkASTCDefinition: anASTCDefinition.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCDoWhile: anASTCDoWhile [
	self walkASTCDoWhile: anASTCDoWhile.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCExpression: anASTCExpression [
	self walkASTCExpression: anASTCExpression.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCExpressionStatement: anASTCExpressionStatement [
	self walkASTCExpressionStatement: anASTCExpressionStatement.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCFor: anASTCFor [
	self walkASTCFor: anASTCFor.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCFunctionCall: anASTCFunctionCall [
	self walkASTCFunctionCall: anASTCFunctionCall.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCFunctionDeclaration: anASTCFunctionDeclaration [
	self walkASTCFunctionDeclaration: anASTCFunctionDeclaration.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	self walkASTCFunctionDefinition: anASTCFunctionDefinition.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCIdentifier: anASTCIdentifier [
	self walkASTCIdentifier: anASTCIdentifier.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCIf: anASTCIf [
	self walkASTCIf: anASTCIf.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCLiteral: anASTCLiteral [
	self walkASTCLiteral: anASTCLiteral.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCLoop: anASTCLoop [
	self walkASTCLoop: anASTCLoop.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCNode: anASTCNode [
	self walkASTCNode: anASTCNode.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCOperator: anASTCOperator [
	self walkASTCOperator: anASTCOperator.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCProject: anASTCProject [
	self walkASTCProject: anASTCProject.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCReturn: anASTCReturn [
	self walkASTCReturn: anASTCReturn.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCStatement: anASTCStatement [
	self walkASTCStatement: anASTCStatement.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCStructureDeclaration: anASTCStructureDeclaration [
	self walkASTCStructureDeclaration: anASTCStructureDeclaration.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCStructureDefinition: anASTCStructureDefinition [
	self walkASTCStructureDefinition: anASTCStructureDefinition.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCType: anASTCType [
	self walkASTCType: anASTCType.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCVariableDeclaration: anASTCVariableDeclaration [
	self walkASTCVariableDeclaration: anASTCVariableDeclaration.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCVariableDefinition: anASTCVariableDefinition [
	self walkASTCVariableDefinition: anASTCVariableDefinition.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCWhile: anASTCWhile [
	self walkASTCWhile: anASTCWhile.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCAbstractWhile: anASTCAbstractWhile [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCBlock: anASTCBlock [
	self walkASTCBlockStatements: anASTCBlock.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCBlockStatements:anASTCBlock [
	anASTCBlock statements
		ifNotNil:[ :statements | statements
			do:[ :aStatement | aStatement acceptVisitor:self ]
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCCompilationUnit: anASTCCompilationUnit [
	self walkASTCCompilationUnitDefinitions: anASTCCompilationUnit.
	self walkASTCCompilationUnitDeclarations: anASTCCompilationUnit.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitDeclarations:anASTCCompilationUnit [
	anASTCCompilationUnit declarations
		ifNotNil:[ :declarations | declarations
			do:[ :aDeclaration | aDeclaration acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitDefinitions:anASTCCompilationUnit [
	anASTCCompilationUnit definitions
		ifNotNil:[ :definitions | definitions
			do:[ :aDefinition | aDefinition acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitParent:anASTCCompilationUnit [
	anASTCCompilationUnit parent
		ifNotNil:[ :parent | parent acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDeclaration: anASTCDeclaration [
	self walkASTCDeclarationId: anASTCDeclaration.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationId:anASTCDeclaration [
	anASTCDeclaration id
		ifNotNil:[ :id | id acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDeclarationStatement: anASTCDeclarationStatement [
	self walkASTCDeclarationStatementDeclaration: anASTCDeclarationStatement.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationStatementDeclaration:anASTCDeclarationStatement [
	anASTCDeclarationStatement declaration
		ifNotNil:[ :declaration | declaration acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDefinition: anASTCDefinition [
	self walkASTCDefinitionDeclaration: anASTCDefinition.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDefinitionDeclaration:anASTCDefinition [
	anASTCDefinition declaration
		ifNotNil:[ :declaration | declaration acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDoWhile: anASTCDoWhile [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCExpression: anASTCExpression [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCExpressionStatement: anASTCExpressionStatement [
	self walkASTCExpressionStatementExpression: anASTCExpressionStatement.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCExpressionStatementExpression:anASTCExpressionStatement [
	anASTCExpressionStatement expression
		ifNotNil:[ :expression | expression acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFor: anASTCFor [
	self walkASTCForIteratorDecl: anASTCFor.
	self walkASTCForIteratorModification: anASTCFor.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCForIteratorDecl:anASTCFor [
	anASTCFor iteratorDecl
		ifNotNil:[ :iteratorDecl | iteratorDecl acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCForIteratorModification:anASTCFor [
	anASTCFor iteratorModification
		ifNotNil:[ :iteratorModification | iteratorModification acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFunctionCall: anASTCFunctionCall [
	self walkASTCFunctionCallId: anASTCFunctionCall.
	self walkASTCFunctionCallArguments: anASTCFunctionCall.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionCallArguments:anASTCFunctionCall [
	anASTCFunctionCall arguments
		ifNotNil:[ :arguments | arguments
			do:[ :anArgument | anArgument acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionCallId:anASTCFunctionCall [
	anASTCFunctionCall id
		ifNotNil:[ :id | id acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFunctionDeclaration: anASTCFunctionDeclaration [
	self walkASTCFunctionDeclarationType: anASTCFunctionDeclaration.
	self walkASTCFunctionDeclarationParameters: anASTCFunctionDeclaration.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDeclarationParameters:anASTCFunctionDeclaration [
	anASTCFunctionDeclaration parameters
		ifNotNil:[ :parameters | parameters
			do:[ :aParameter | aParameter acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDeclarationType:anASTCFunctionDeclaration [
	anASTCFunctionDeclaration type
		ifNotNil:[ :type | type acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFunctionDefinition: anASTCFunctionDefinition [
	self walkASTCFunctionDefinitionBody: anASTCFunctionDefinition.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionBody:anASTCFunctionDefinition [
	anASTCFunctionDefinition body
		ifNotNil:[ :body | body acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCIdentifier: anASTCIdentifier [
	self walkASTCIdentifierId: anASTCIdentifier.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIdentifierId:anASTCIdentifier [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCIf: anASTCIf [
	self walkASTCIfCondition: anASTCIf.
	self walkASTCIfThen: anASTCIf.
	self walkASTCIfElse: anASTCIf.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfCondition:anASTCIf [
	anASTCIf condition
		ifNotNil:[ :condition | condition acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfElse:anASTCIf [
	anASTCIf else
		ifNotNil:[ :else | else acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfThen:anASTCIf [
	anASTCIf then
		ifNotNil:[ :then | then acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCLiteral: anASTCLiteral [
	self walkASTCLiteralValue: anASTCLiteral.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCLiteralValue:anASTCLiteral [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCLoop: anASTCLoop [
	self walkASTCLoopCondition: anASTCLoop.
	self walkASTCLoopBody: anASTCLoop.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCLoopBody:anASTCLoop [
	anASTCLoop body
		ifNotNil:[ :body | body acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCLoopCondition:anASTCLoop [
	anASTCLoop condition
		ifNotNil:[ :condition | condition acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCNode: anASTCNode [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCOperator: anASTCOperator [
	self walkASTCOperatorOperands: anASTCOperator.
	self walkASTCOperatorSymbol: anASTCOperator.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCOperatorOperands:anASTCOperator [
	anASTCOperator operands
		ifNotNil:[ :operands | operands
			do:[ :anOperand | anOperand acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCOperatorSymbol:anASTCOperator [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCProject: anASTCProject [
	self walkASTCProjectCompilationUnits: anASTCProject.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCProjectCompilationUnits:anASTCProject [
	anASTCProject compilationUnits
		ifNotNil:[ :compilationUnits | compilationUnits
			do:[ :aCompilationUnit | aCompilationUnit acceptVisitor:self ]
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCReturn: anASTCReturn [
	self walkASTCReturnExpression: anASTCReturn.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCReturnExpression:anASTCReturn [
	anASTCReturn expression
		ifNotNil:[ :expression | expression acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCStatement: anASTCStatement [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCStructureDeclaration: anASTCStructureDeclaration [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCStructureDefinition: anASTCStructureDefinition [
	self walkASTCStructureDefinitionMembers: anASTCStructureDefinition.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCStructureDefinitionMembers:anASTCStructureDefinition [
	anASTCStructureDefinition members
		ifNotNil:[ :members | members
			do:[ :aMember | aMember acceptVisitor:self ]
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCType: anASTCType [
	self walkASTCTypeType: anASTCType.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCTypeType:anASTCType [

]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCVariableDeclaration: anASTCVariableDeclaration [
	self walkASTCVariableDeclarationType: anASTCVariableDeclaration.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCVariableDeclarationType:anASTCVariableDeclaration [
	anASTCVariableDeclaration type
		ifNotNil:[ :type | type acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCVariableDefinition: anASTCVariableDefinition [
	self walkASTCVariableDefinitionInit: anASTCVariableDefinition.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCVariableDefinitionInit:anASTCVariableDefinition [
	anASTCVariableDefinition init
		ifNotNil:[ :init | init acceptVisitor:self.
		]
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCWhile: anASTCWhile [

]
