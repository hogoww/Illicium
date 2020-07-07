Class {
	#name : #ASTCHierarchyWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Core-visitors'
}

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	^ self visitLoop: anAbstractWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAdditionOperator: anAdditionOperator [
	^ self visitBinaryOperator: anAdditionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAddressOfOperator: anAddressOfOperator [
	^ self visitUnaryOperator: anAddressOfOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAndOperator: anAndOperator [
	^ self visitBinaryOperator: anAndOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAssignmentAdditionOperator: anAssignmentAdditionOperator [
	^ self visitBinaryOperator: anAssignmentAdditionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAssignmentOperator: anAssignmentOperator [
	^ self visitBinaryOperator: anAssignmentOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBinaryOperator: aBinaryOperator [
	aBinaryOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	aBinaryOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ].
	^ self visitOperator: aBinaryOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitLeftShiftOperator: aBitLeftShiftOperator [
	^ self visitBinaryOperator: aBitLeftShiftOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitRightShiftOperator: aBitRightShiftOperator [
	^ self visitBinaryOperator: aBitRightShiftOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
	^ self visitBinaryOperator: aBitwiseAndOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseNotOperator: aBitwiseNotOperator [
	^ self visitUnaryOperator: aBitwiseNotOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseOrOperator: aBitwiseOrOperator [
	^ self visitBinaryOperator: aBitwiseOrOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseXorOperator: aBitwiseXorOperator [
	^ self visitBinaryOperator: aBitwiseXorOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBlock: aBlock [
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ].
	aBlock declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ].
	^ self visitStatement: aBlock
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBreak: aBreak [
	^ self visitStatement: aBreak
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCastOperator: aCastOperator [
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ].
	^ self visitUnaryOperator: aCastOperator
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
		ifNotNil: [ :aPreamble | aPreamble acceptVisitor: self ].
	^ self visitNode: aCompilationUnit
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclaration: aDeclaration [
	aDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ].
	^ self visitNode: aDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	^ self visitStatement: aDeclarationStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDefinition: aDefinition [
	aDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ].
	^ self visitNode: aDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDivisionOperator: aDivisionOperator [
	^ self visitBinaryOperator: aDivisionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDoWhile: aDoWhile [
	^ self visitAbstractWhile: aDoWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEqualityOperator: anEqualityOperator [
	^ self visitBinaryOperator: anEqualityOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpression: anExpression [
	^ self visitNode: anExpression
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionList: anExpressionList [
	anExpressionList expressions
		ifNotNil:
			[ :expressions | expressions do: [ :anExpressions | anExpressions acceptVisitor: self ] ].
	^ self visitExpression: anExpressionList
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	^ self visitStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFor: aFor [
	aFor iteratorDefinition
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ].
	^ self visitLoop: aFor
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionCall: aFunctionCall [
	aFunctionCall arguments
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ].
	aFunctionCall id ifNotNil: [ :anId | anId acceptVisitor: self ].
	^ self visitExpression: aFunctionCall
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration parameters
		ifNotNil:
			[ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ].
	aFunctionDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ].
	^ self visitDeclaration: aFunctionDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition body
		ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	^ self visitDefinition: aFunctionDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOperator: aGreaterOperator [
	^ self visitBinaryOperator: aGreaterOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
	^ self visitBinaryOperator: aGreaterOrEqualOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIdentifier: anIdentifier [
	^ self visitExpression: anIdentifier
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIf: anIf [
	anIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ].
	^ self visitStatement: anIf
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIndexerOperator: anIndexerOperator [
	^ self visitBinaryOperator: anIndexerOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitInequalityOperator: anInequalityOperator [
	^ self visitBinaryOperator: anInequalityOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOperator: aLesserOperator [
	^ self visitBinaryOperator: aLesserOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
	^ self visitBinaryOperator: aLesserOrEqualOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
	^ self visitUnaryOperator: aLogicalNotOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLoop: aLoop [
	aLoop condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop body ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	^ self visitStatement: aLoop
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitModuloOperator: aModuloOperator [
	^ self visitBinaryOperator: aModuloOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
	^ self visitBinaryOperator: aMultiplicationOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNegationOperator: aNegationOperator [
	^ self visitUnaryOperator: aNegationOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNode: aNode [
	
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOperator: anOperator [
	^ self visitExpression: anOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOrOperator: anOrOperator [
	^ self visitBinaryOperator: anOrOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
	^ self visitUnaryOperator: aPreDecrementOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
	^ self visitUnaryOperator: aPreIncrementOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorDefine: aPreprocessorDefine [
	aPreprocessorDefine name
		ifNotNil: [ :aName | aName acceptVisitor: self ].
	aPreprocessorDefine value
		ifNotNil: [ :aValue | aValue acceptVisitor: self ].
	^ self visitNode: aPreprocessorDefine
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
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	^ self visitExpression: aPreprocessorIf
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorInclude: aPreprocessorInclude [
	^ self visitNode: aPreprocessorInclude
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitProject: aProject [
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ].
	^ self visitNode: aProject
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitRawCCode: aRawCCode [
	^ self visitExpression: aRawCCode
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitRawDeclaration: aRawDeclaration [
	^ self visitDeclarationStatement: aRawDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitReturn: aReturn [
	aReturn expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	^ self visitStatement: aReturn
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStatement: aStatement [
	^ self visitNode: aStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
	^ self visitBinaryOperator: aStructAccessPointerOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
	^ self visitBinaryOperator: aStructAccessStaticOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	^ self visitDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ].
	^ self visitDefinition: aStructureDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
	^ self visitBinaryOperator: aSubtractionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitch: aSwitch [
	aSwitch cases
		ifNotNil:
			[ :cases | cases do: [ :aCases | aCases acceptVisitor: self ] ].
	aSwitch expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitch default
		ifNotNil: [ :aDefault | aDefault acceptVisitor: self ].
	^ self visitStatement: aSwitch
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitchCase: aSwitchCase [
	aSwitchCase expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ].
	aSwitchCase body ifNotNil: [ :aBody | aBody acceptVisitor: self ].
	^ self visitStatement: aSwitchCase
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
	aTernaryConditionalOperator condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aTernaryConditionalOperator then
		ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	aTernaryConditionalOperator else
		ifNotNil: [ :anElse | anElse acceptVisitor: self ].
	^ self visitOperator: aTernaryConditionalOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitType: aType [
	^ self visitNode: aType
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
	anUnaryOperator operand
		ifNotNil: [ :anOperand | anOperand acceptVisitor: self ].
	^ self visitOperator: anUnaryOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ].
	^ self visitDeclaration: aVariableDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ].
	^ self visitDefinition: aVariableDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitWhile: aWhile [
	^ self visitAbstractWhile: aWhile
]
