Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Core-visitors'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	anAbstractWhile condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anAbstractWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAdditionOperator: anAdditionOperator [
	anAdditionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAdditionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAddressOfOperator: anAddressOfOperator [
	anAddressOfOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAndOperator: anAndOperator [
	anAndOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAndOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAssignmentAdditionOperator: anAssignmentAdditionOperator [
	anAssignmentAdditionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAssignmentAdditionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAssignmentOperator: anAssignmentOperator [
	anAssignmentOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAssignmentOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBinaryOperator: aBinaryOperator [
	aBinaryOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBinaryOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitLeftShiftOperator: aBitLeftShiftOperator [
	aBitLeftShiftOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitLeftShiftOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitRightShiftOperator: aBitRightShiftOperator [
	aBitRightShiftOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitRightShiftOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
	aBitwiseAndOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitwiseAndOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitwiseNotOperator: aBitwiseNotOperator [
	aBitwiseNotOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitwiseOrOperator: aBitwiseOrOperator [
	aBitwiseOrOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitwiseOrOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitwiseXorOperator: aBitwiseXorOperator [
	aBitwiseXorOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBitwiseXorOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBlock: aBlock [
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ].
	aBlock declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBreak: aBreak [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCastOperator: aCastOperator [
	aCastOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ].
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	aCompilationUnit includes
		ifNotNil:
			[ :includes | includes do: [ :anIncludes | anIncludes acceptVisitor: self ] ].
	aCompilationUnit defines
		ifNotNil:
			[ :defines | defines do: [ :aDefines | aDefines acceptVisitor: self ] ].
	aCompilationUnit structTypes
		ifNotNil:
			[ :structTypes | structTypes do: [ :aStructTypes | aStructTypes acceptVisitor: self ] ].
	aCompilationUnit definitions
		ifNotNil:
			[ :definitions | definitions do: [ :aDefinitions | aDefinitions acceptVisitor: self ] ].
	aCompilationUnit variableDeclarations
		ifNotNil: [ :variableDeclarations | 
			variableDeclarations
				do: [ :aVariableDeclarations | aVariableDeclarations acceptVisitor: self ] ].
	aCompilationUnit preamble
		ifNotNil: [ :aPreamble | aPreamble acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclaration: aDeclaration [
	aDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDefinition: aDefinition [
	aDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDivisionOperator: aDivisionOperator [
	aDivisionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aDivisionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDoWhile: aDoWhile [
	aDoWhile condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aDoWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitEmptyStatement: anEmptyStatement [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitEqualityOperator: anEqualityOperator [
	anEqualityOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anEqualityOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpression: anExpression [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpressionList: anExpressionList [
	anExpressionList expressions
		ifNotNil:
			[ :expressions | expressions do: [ :anExpressions | anExpressions acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFor: aFor [
	aFor condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aFor body ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	aFor iteratorDefinition
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionCall: aFunctionCall [
	aFunctionCall arguments
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ].
	aFunctionCall id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration parameters
		ifNotNil:
			[ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ].
	aFunctionDeclaration id
		ifNotNil: [ :anId | anId acceptVisitor: self ].
	aFunctionDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	aFunctionDefinition body
		ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitGreaterOperator: aGreaterOperator [
	aGreaterOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aGreaterOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
	aGreaterOrEqualOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aGreaterOrEqualOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIdentifier: anIdentifier [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIf: anIf [
	anIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIndexerOperator: anIndexerOperator [
	anIndexerOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anIndexerOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitInequalityOperator: anInequalityOperator [
	anInequalityOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anInequalityOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLesserOperator: aLesserOperator [
	aLesserOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aLesserOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
	aLesserOrEqualOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aLesserOrEqualOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLiteral: aLiteral [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
	aLogicalNotOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLoop: aLoop [
	aLoop condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitModuloOperator: aModuloOperator [
	aModuloOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aModuloOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
	aMultiplicationOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aMultiplicationOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitNegationOperator: aNegationOperator [
	aNegationOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOperator: anOperator [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOrOperator: anOrOperator [
	anOrOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anOrOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
	aPreDecrementOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
	aPreIncrementOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreprocessorDefine: aPreprocessorDefine [
	aPreprocessorDefine name
		ifNotNil: [ :aName | aName acceptVisitor: self ].
	aPreprocessorDefine value
		ifNotNil: [ :aValue | aValue acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreprocessorIf: aPreprocessorIf [
	aPreprocessorIf then
		ifNotNil:
			[ :then | then do: [ :aThen | aThen acceptVisitor: self ] ].
	aPreprocessorIf else
		ifNotNil:
			[ :else | else do: [ :anElse | anElse acceptVisitor: self ] ].
	aPreprocessorIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreprocessorInclude: aPreprocessorInclude [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitProject: aProject [
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitRawCCode: aRawCCode [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitRawDeclaration: aRawDeclaration [
	aRawDeclaration declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitReturn: aReturn [
	aReturn expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStatement: aStatement [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
	aStructAccessPointerOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aStructAccessPointerOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
	aStructAccessStaticOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aStructAccessStaticOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	aStructureDeclaration id
		ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ].
	aStructureDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
	aSubtractionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aSubtractionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitSwitch: aSwitch [
	aSwitch cases
		ifNotNil:
			[ :cases | cases do: [ :aCases | aCases acceptVisitor: self ] ].
	aSwitch expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitch default
		ifNotNil: [ :aDefault | aDefault acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitSwitchCase: aSwitchCase [
	aSwitchCase expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitchCase body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
	aTernaryConditionalOperator condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aTernaryConditionalOperator then
		ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	aTernaryConditionalOperator else
		ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitType: aType [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
	anUnaryOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration id
		ifNotNil: [ :anId | anId acceptVisitor: self ].
	aVariableDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitWhile: aWhile [
	aWhile condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aWhile body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]
