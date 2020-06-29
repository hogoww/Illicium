Class {
	#name : #ASTCHierarchyWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Core-visitors'
}

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAdditionOperator: anAdditionOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAddressOfOperator: anAddressOfOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAndOperator: anAndOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAssignmentAdditionOperator: anAssignmentAdditionOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAssignmentOperator: anAssignmentOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBinaryOperator: aBinaryOperator [
	aBinaryOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBinaryOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitLeftShiftOperator: aBitLeftShiftOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitRightShiftOperator: aBitRightShiftOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseNotOperator: aBitwiseNotOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseOrOperator: aBitwiseOrOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseXorOperator: aBitwiseXorOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBlock: aBlock [
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ].
	aBlock declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBreak: aBreak [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCastOperator: aCastOperator [
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
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
ASTCHierarchyWalkerVisitor >> visitDeclaration: aDeclaration [
	aDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDefinition: aDefinition [
	aDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDivisionOperator: aDivisionOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDoWhile: aDoWhile [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEmptyStatement: anEmptyStatement [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEqualityOperator: anEqualityOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpression: anExpression [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionList: anExpressionList [
	anExpressionList expressions
		ifNotNil:
			[ :expressions | expressions do: [ :anExpressions | anExpressions acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFor: aFor [
	aFor iteratorDefinition
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionCall: aFunctionCall [
	aFunctionCall arguments
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ].
	aFunctionCall id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration parameters
		ifNotNil:
			[ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ].
	aFunctionDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition body
		ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOperator: aGreaterOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIdentifier: anIdentifier [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIf: anIf [
	anIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIndexerOperator: anIndexerOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitInequalityOperator: anInequalityOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOperator: aLesserOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLiteral: aLiteral [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLoop: aLoop [
	aLoop condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitModuloOperator: aModuloOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNegationOperator: aNegationOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNode: aNode [
	aNode parent ifNotNil: [ :aParent | aParent acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOperator: anOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOrOperator: anOrOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorDefine: aPreprocessorDefine [
	aPreprocessorDefine name
		ifNotNil: [ :aName | aName acceptVisitor: self ].
	aPreprocessorDefine value
		ifNotNil: [ :aValue | aValue acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorIf: aPreprocessorIf [
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
ASTCHierarchyWalkerVisitor >> visitPreprocessorInclude: aPreprocessorInclude [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitProject: aProject [
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitRawCCode: aRawCCode [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitRawDeclaration: aRawDeclaration [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitReturn: aReturn [
	aReturn expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStatement: aStatement [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitch: aSwitch [
	aSwitch cases
		ifNotNil:
			[ :cases | cases do: [ :aCases | aCases acceptVisitor: self ] ].
	aSwitch expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitch default
		ifNotNil: [ :aDefault | aDefault acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitchCase: aSwitchCase [
	aSwitchCase expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitchCase body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
	aTernaryConditionalOperator condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aTernaryConditionalOperator then
		ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	aTernaryConditionalOperator else
		ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitType: aType [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
	anUnaryOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitWhile: aWhile [
	
]
