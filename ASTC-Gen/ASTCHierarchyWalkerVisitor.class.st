Class {
	#name : #ASTCHierarchyWalkerVisitor,
	#superclass : #ASTCWalkerVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
  super visitAbstractWhile: anAbstractWhile.
  ^self visitLoop: anAbstractWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAdditionOperator: anAdditionOperator [
  super visitAdditionOperator: anAdditionOperator.
  ^self visitBinaryOperator: anAdditionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAndOperator: anAndOperator [
  super visitAndOperator: anAndOperator.
  ^self visitBinaryOperator: anAndOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAssignmentOperator: anAssignmentOperator [
  super visitAssignmentOperator: anAssignmentOperator.
  ^self visitBinaryOperator: anAssignmentOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBinaryOperator: aBinaryOperator [
  super visitBinaryOperator: aBinaryOperator.
  ^self visitOperator: aBinaryOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
  super visitBitwiseAndOperator: aBitwiseAndOperator.
  ^self visitBinaryOperator: aBitwiseAndOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBlock: aBlock [
  super visitBlock: aBlock.
  ^self visitStatement: aBlock
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBreak: aBreak [
  super visitBreak: aBreak.
  ^self visitStatement: aBreak
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCastOperator: aCastOperator [
  super visitCastOperator: aCastOperator.
  ^self visitUnaryOperator: aCastOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
  super visitCompilationUnit: aCompilationUnit.
  ^self visitNode: aCompilationUnit
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclaration: aDeclaration [
  super visitDeclaration: aDeclaration.
  ^self visitNode: aDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
  super visitDeclarationStatement: aDeclarationStatement.
  ^self visitStatement: aDeclarationStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDefinition: aDefinition [
  super visitDefinition: aDefinition.
  ^self visitNode: aDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDivisionOperator: aDivisionOperator [
  super visitDivisionOperator: aDivisionOperator.
  ^self visitBinaryOperator: aDivisionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDoWhile: aDoWhile [
  super visitDoWhile: aDoWhile.
  ^self visitAbstractWhile: aDoWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEmptyStatment: anEmptyStatment [
  super visitEmptyStatment: anEmptyStatment.
  ^self visitStatement: anEmptyStatment
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitEqualityOperator: anEqualityOperator [
  super visitEqualityOperator: anEqualityOperator.
  ^self visitBinaryOperator: anEqualityOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpression: anExpression [
  super visitExpression: anExpression.
  ^self visitNode: anExpression
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
  super visitExpressionStatement: anExpressionStatement.
  ^self visitStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFor: aFor [
  super visitFor: aFor.
  ^self visitLoop: aFor
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionCall: aFunctionCall [
  super visitFunctionCall: aFunctionCall.
  ^self visitExpression: aFunctionCall
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
  super visitFunctionDeclaration: aFunctionDeclaration.
  ^self visitDeclaration: aFunctionDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
  super visitFunctionDefinition: aFunctionDefinition.
  ^self visitDefinition: aFunctionDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOperator: aGreaterOperator [
  super visitGreaterOperator: aGreaterOperator.
  ^self visitBinaryOperator: aGreaterOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
  super visitGreaterOrEqualOperator: aGreaterOrEqualOperator.
  ^self visitBinaryOperator: aGreaterOrEqualOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIdentifier: anIdentifier [
  super visitIdentifier: anIdentifier.
  ^self visitExpression: anIdentifier
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIf: anIf [
  super visitIf: anIf.
  ^self visitStatement: anIf
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIndexerOperator: anIndexerOperator [
  super visitIndexerOperator: anIndexerOperator.
  ^self visitBinaryOperator: anIndexerOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitInequalityOperator: anInequalityOperator [
  super visitInequalityOperator: anInequalityOperator.
  ^self visitBinaryOperator: anInequalityOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOperator: aLesserOperator [
  super visitLesserOperator: aLesserOperator.
  ^self visitBinaryOperator: aLesserOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
  super visitLesserOrEqualOperator: aLesserOrEqualOperator.
  ^self visitBinaryOperator: aLesserOrEqualOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLiteral: aLiteral [
  super visitLiteral: aLiteral.
  ^self visitExpression: aLiteral
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
  super visitLogicalNotOperator: aLogicalNotOperator.
  ^self visitUnaryOperator: aLogicalNotOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLoop: aLoop [
  super visitLoop: aLoop.
  ^self visitStatement: aLoop
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitModuloOperator: aModuloOperator [
  super visitModuloOperator: aModuloOperator.
  ^self visitBinaryOperator: aModuloOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
  super visitMultiplicationOperator: aMultiplicationOperator.
  ^self visitBinaryOperator: aMultiplicationOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNode: aNode [
  super visitNode: aNode
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOperator: anOperator [
  super visitOperator: anOperator.
  ^self visitExpression: anOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOrOperator: anOrOperator [
  super visitOrOperator: anOrOperator.
  ^self visitBinaryOperator: anOrOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
  super visitPreDecrementOperator: aPreDecrementOperator.
  ^self visitUnaryOperator: aPreDecrementOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
  super visitPreIncrementOperator: aPreIncrementOperator.
  ^self visitUnaryOperator: aPreIncrementOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitProject: aProject [
  super visitProject: aProject.
  ^self visitNode: aProject
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitReturn: aReturn [
  super visitReturn: aReturn.
  ^self visitStatement: aReturn
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStatement: aStatement [
  super visitStatement: aStatement.
  ^self visitNode: aStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
  super visitStructAccessPointerOperator: aStructAccessPointerOperator.
  ^self visitBinaryOperator: aStructAccessPointerOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
  super visitStructAccessStaticOperator: aStructAccessStaticOperator.
  ^self visitBinaryOperator: aStructAccessStaticOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
  super visitStructureDeclaration: aStructureDeclaration.
  ^self visitDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
  super visitStructureDefinition: aStructureDefinition.
  ^self visitDefinition: aStructureDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
  super visitSubtractionOperator: aSubtractionOperator.
  ^self visitBinaryOperator: aSubtractionOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
  super visitTernaryConditionalOperator: aTernaryConditionalOperator.
  ^self visitOperator: aTernaryConditionalOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitType: aType [
  super visitType: aType.
  ^self visitNode: aType
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
  super visitUnaryOperator: anUnaryOperator.
  ^self visitOperator: anUnaryOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
  super visitVariableDeclaration: aVariableDeclaration.
  ^self visitDeclaration: aVariableDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
  super visitVariableDefinition: aVariableDefinition.
  ^self visitDefinition: aVariableDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitWhile: aWhile [
  super visitWhile: aWhile.
  ^self visitAbstractWhile: aWhile
]
