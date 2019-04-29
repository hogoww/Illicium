Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen'
}

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
ASTCWalkerVisitor >> visitASTCExpression: anASTCExpression [
	self walkASTCExpression: anASTCExpression.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCExpressionStatement: anASTCExpressionStatement [
	self walkASTCExpressionStatement: anASTCExpressionStatement.
			
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitASTCFunctionCall: anASTCFunctionCall [
	self walkASTCFunctionCall: anASTCFunctionCall.
			
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
ASTCWalkerVisitor >> visitASTCType: anASTCType [
	self walkASTCType: anASTCType.
			
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
	self walkASTCCompilationUnitFunctionDefinitions: anASTCCompilationUnit.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitFunctionDefinitions:anASTCCompilationUnit [
	anASTCCompilationUnit functionDefinitions
		ifNotNil:[ :functionDefinitions | functionDefinitions
			do:[ :aFunctionDefinition | aFunctionDefinition acceptVisitor:self ]
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
	self walkASTCDeclarationType: anASTCDeclaration.
	self walkASTCDeclarationId: anASTCDeclaration.
	self walkASTCDeclarationInit: anASTCDeclaration.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationId:anASTCDeclaration [
	anASTCDeclaration id
		ifNotNil:[ :id | id acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationInit:anASTCDeclaration [
	anASTCDeclaration init
		ifNotNil:[ :init | init acceptVisitor:self.
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

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationType:anASTCDeclaration [
	anASTCDeclaration type
		ifNotNil:[ :type | type acceptVisitor:self.
		]
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
ASTCWalkerVisitor >> walkASTCFunctionDefinition: anASTCFunctionDefinition [
	self walkASTCFunctionDefinitionType: anASTCFunctionDefinition.
	self walkASTCFunctionDefinitionId: anASTCFunctionDefinition.
	self walkASTCFunctionDefinitionParameters: anASTCFunctionDefinition.
	self walkASTCFunctionDefinitionBody: anASTCFunctionDefinition.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionBody:anASTCFunctionDefinition [
	anASTCFunctionDefinition body
		ifNotNil:[ :body | body acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionId:anASTCFunctionDefinition [
	anASTCFunctionDefinition id
		ifNotNil:[ :id | id acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionParameters:anASTCFunctionDefinition [
	anASTCFunctionDefinition parameters
		ifNotNil:[ :parameters | parameters
			do:[ :aParameter | aParameter acceptVisitor:self ]
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionType:anASTCFunctionDefinition [
	anASTCFunctionDefinition type
		ifNotNil:[ :type | type acceptVisitor:self.
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
	self walkASTCIfPredicate: anASTCIf.
	self walkASTCIfThen: anASTCIf.
	self walkASTCIfElse: anASTCIf.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfElse:anASTCIf [
	anASTCIf else
		ifNotNil:[ :else | else acceptVisitor:self.
		]
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfPredicate:anASTCIf [
	anASTCIf predicate
		ifNotNil:[ :predicate | predicate acceptVisitor:self.
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
ASTCWalkerVisitor >> walkASTCType: anASTCType [
	self walkASTCTypeType: anASTCType.

]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCTypeType:anASTCType [

]
