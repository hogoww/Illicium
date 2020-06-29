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
	^ self visitStatement: aBlock
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBreak: aBreak [
	^ self visitStatement: aBreak
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCastOperator: aCastOperator [
	^ self visitUnaryOperator: aCastOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	^ self visitNode: aCompilationUnit
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclaration: aDeclaration [
	^ self visitNode: aDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	^ self visitStatement: aDeclarationStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDefinition: aDefinition [
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
	^ self visitExpression: anExpressionList
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFor: aFor [
	^ self visitLoop: aFor
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionCall: aFunctionCall [
	^ self visitExpression: aFunctionCall
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ self visitDeclaration: aFunctionDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
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
	^ self visitNode: aPreprocessorDefine
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorIf: aPreprocessorIf [
	^ self visitExpression: aPreprocessorIf
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreprocessorInclude: aPreprocessorInclude [
	^ self visitNode: aPreprocessorInclude
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitProject: aProject [
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
	^ self visitDefinition: aStructureDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
	^ self visitBinaryOperator: aSubtractionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitch: aSwitch [
	^ self visitStatement: aSwitch
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSwitchCase: aSwitchCase [
	^ self visitStatement: aSwitchCase
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
	^ self visitOperator: aTernaryConditionalOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitType: aType [
	^ self visitNode: aType
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
	^ self visitOperator: anUnaryOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitDeclaration: aVariableDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	^ self visitDefinition: aVariableDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitWhile: aWhile [
	^ self visitAbstractWhile: aWhile
]
