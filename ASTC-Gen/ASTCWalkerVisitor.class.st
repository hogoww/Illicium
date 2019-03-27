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
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCBlockDeclarations:anASTCBlock [
  anASTCBlock declarations ifNil:[^self].
		anASTCBlock declarations do:[:child| child acceptVisitor:self].
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCBlockStatements:anASTCBlock [
  anASTCBlock statements ifNil:[^self].
		anASTCBlock statements do:[:child| child acceptVisitor:self].
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCCompilationUnit: anASTCCompilationUnit [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitFunctionDefinitions:anASTCCompilationUnit [
  anASTCCompilationUnit functionDefinitions ifNil:[^self].
		anASTCCompilationUnit functionDefinitions do:[:child| child acceptVisitor:self].
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCCompilationUnitParent:anASTCCompilationUnit [
  anASTCCompilationUnit parent ifNil:[^self].
		anASTCCompilationUnit parent acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCDeclaration: anASTCDeclaration [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationId:anASTCDeclaration [
  anASTCDeclaration id ifNil:[^self].
		anASTCDeclaration id acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationInit:anASTCDeclaration [
  anASTCDeclaration init ifNil:[^self].
		anASTCDeclaration init acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCDeclarationType:anASTCDeclaration [
  anASTCDeclaration type ifNil:[^self].
		anASTCDeclaration type acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCExpression: anASTCExpression [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCExpressionStatement: anASTCExpressionStatement [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCExpressionStatementExpression:anASTCExpressionStatement [
  anASTCExpressionStatement expression ifNil:[^self].
		anASTCExpressionStatement expression acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFunctionCall: anASTCFunctionCall [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionCallArguments:anASTCFunctionCall [
  anASTCFunctionCall arguments ifNil:[^self].
		anASTCFunctionCall arguments do:[:child| child acceptVisitor:self].
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionCallId:anASTCFunctionCall [
  anASTCFunctionCall id ifNil:[^self].
		anASTCFunctionCall id acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCFunctionDefinition: anASTCFunctionDefinition [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionBody:anASTCFunctionDefinition [
  anASTCFunctionDefinition body ifNil:[^self].
		anASTCFunctionDefinition body acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionId:anASTCFunctionDefinition [
  anASTCFunctionDefinition id ifNil:[^self].
		anASTCFunctionDefinition id acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionParameters:anASTCFunctionDefinition [
  anASTCFunctionDefinition parameters ifNil:[^self].
		anASTCFunctionDefinition parameters do:[:child| child acceptVisitor:self].
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCFunctionDefinitionType:anASTCFunctionDefinition [
  anASTCFunctionDefinition type ifNil:[^self].
		anASTCFunctionDefinition type acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCIdentifier: anASTCIdentifier [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIdentifierId:anASTCIdentifier [
  
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCIf: anASTCIf [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfElse:anASTCIf [
  anASTCIf else ifNil:[^self].
		anASTCIf else acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfPredicate:anASTCIf [
  anASTCIf predicate ifNil:[^self].
		anASTCIf predicate acceptVisitor:self.
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCIfThen:anASTCIf [
  anASTCIf then ifNil:[^self].
		anASTCIf then acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCLiteral: anASTCLiteral [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCLiteralValue:anASTCLiteral [
  
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCNode: anASTCNode [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCOperator: anASTCOperator [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCOperatorOperands:anASTCOperator [
  anASTCOperator operands ifNil:[^self].
		anASTCOperator operands do:[:child| child acceptVisitor:self].
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCOperatorSymbol:anASTCOperator [
  
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCProject: anASTCProject [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCProjectCompilationUnits:anASTCProject [
  anASTCProject compilationUnits ifNil:[^self].
		anASTCProject compilationUnits do:[:child| child acceptVisitor:self].
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCReturn: anASTCReturn [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCReturnExpression:anASTCReturn [
  anASTCReturn expression ifNil:[^self].
		anASTCReturn expression acceptVisitor:self.
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCStatement: anASTCStatement [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> walkASTCType: anASTCType [
	
]

{ #category : #walking }
ASTCWalkerVisitor >> walkASTCTypeType:anASTCType [
  
]
