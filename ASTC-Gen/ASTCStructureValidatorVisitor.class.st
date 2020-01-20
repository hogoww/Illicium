Class {
	#name : #ASTCStructureValidatorVisitor,
	#superclass : #ASTCDebugStructureVisitor,
	#instVars : [
		'errors'
	],
	#category : #'ASTC-Gen-visitors'
}

{ #category : #accessing }
ASTCStructureValidatorVisitor >> errors [
  ^errors
]

{ #category : #initialization }
ASTCStructureValidatorVisitor >> initialize [
  errors := 0
]

{ #category : #testing }
ASTCStructureValidatorVisitor >> isValidAst [
  ^errors = 0
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitAbstractWhile: anAbstractWhile [
  [ super visitAbstractWhile: anAbstractWhile ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitAdditionOperator: anAdditionOperator [
  [ super visitAdditionOperator: anAdditionOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitAddressOfOperator: anAddressOfOperator [
  [ super visitAddressOfOperator: anAddressOfOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitAndOperator: anAndOperator [
  [ super visitAndOperator: anAndOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitAssignmentOperator: anAssignmentOperator [
  [ super visitAssignmentOperator: anAssignmentOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitBinaryOperator: aBinaryOperator [
  [ super visitBinaryOperator: aBinaryOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
  [ super visitBitwiseAndOperator: aBitwiseAndOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitBlock: aBlock [
  [ super visitBlock: aBlock ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitBreak: aBreak [
  [ super visitBreak: aBreak ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitCastOperator: aCastOperator [
  [ super visitCastOperator: aCastOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitCompilationUnit: aCompilationUnit [
  [ super visitCompilationUnit: aCompilationUnit ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitDeclaration: aDeclaration [
  [ super visitDeclaration: aDeclaration ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitDeclarationStatement: aDeclarationStatement [
  [ super visitDeclarationStatement: aDeclarationStatement ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitDefinition: aDefinition [
  [ super visitDefinition: aDefinition ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitDivisionOperator: aDivisionOperator [
  [ super visitDivisionOperator: aDivisionOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitDoWhile: aDoWhile [
  [ super visitDoWhile: aDoWhile ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitEmptyStatement: anEmptyStatement [
  [ super visitEmptyStatement: anEmptyStatement ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitEqualityOperator: anEqualityOperator [
  [ super visitEqualityOperator: anEqualityOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitExpression: anExpression [
  [ super visitExpression: anExpression ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitExpressionStatement: anExpressionStatement [
  [ super visitExpressionStatement: anExpressionStatement ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitFor: aFor [
  [ super visitFor: aFor ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitFunctionCall: aFunctionCall [
  [ super visitFunctionCall: aFunctionCall ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
  [ super visitFunctionDeclaration: aFunctionDeclaration ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitFunctionDefinition: aFunctionDefinition [
  [ super visitFunctionDefinition: aFunctionDefinition ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitGreaterOperator: aGreaterOperator [
  [ super visitGreaterOperator: aGreaterOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
  [ super visitGreaterOrEqualOperator: aGreaterOrEqualOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitIdentifier: anIdentifier [
  [ super visitIdentifier: anIdentifier ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitIf: anIf [
  [ super visitIf: anIf ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitIndexerOperator: anIndexerOperator [
  [ super visitIndexerOperator: anIndexerOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitInequalityOperator: anInequalityOperator [
  [ super visitInequalityOperator: anInequalityOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitLesserOperator: aLesserOperator [
  [ super visitLesserOperator: aLesserOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
  [ super visitLesserOrEqualOperator: aLesserOrEqualOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitLiteral: aLiteral [
  [ super visitLiteral: aLiteral ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
  [ super visitLogicalNotOperator: aLogicalNotOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitLoop: aLoop [
  [ super visitLoop: aLoop ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitModuloOperator: aModuloOperator [
  [ super visitModuloOperator: aModuloOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
  [ super visitMultiplicationOperator: aMultiplicationOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitNode: aNode [
  [ super visitNode: aNode ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitOperator: anOperator [
  [ super visitOperator: anOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitOrOperator: anOrOperator [
  [ super visitOrOperator: anOrOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
  [ super visitPreDecrementOperator: aPreDecrementOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
  [ super visitPreIncrementOperator: aPreIncrementOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitPreprocessorIf: aPreprocessorIf [
  [ super visitPreprocessorIf: aPreprocessorIf ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitProject: aProject [
  [ super visitProject: aProject ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitRawCCode: aRawCCode [
  [ super visitRawCCode: aRawCCode ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitRawDeclaration: aRawDeclaration [
  [ super visitRawDeclaration: aRawDeclaration ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitReturn: aReturn [
  [ super visitReturn: aReturn ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitStatement: aStatement [
  [ super visitStatement: aStatement ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
  [ super visitStructAccessPointerOperator: aStructAccessPointerOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
  [ super visitStructAccessStaticOperator: aStructAccessStaticOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitStructureDeclaration: aStructureDeclaration [
  [ super visitStructureDeclaration: aStructureDeclaration ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitStructureDefinition: aStructureDefinition [
  [ super visitStructureDefinition: aStructureDefinition ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitSubtractionOperator: aSubtractionOperator [
  [ super visitSubtractionOperator: aSubtractionOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
  [ super visitTernaryConditionalOperator: aTernaryConditionalOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitType: aType [
  [ super visitType: aType ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitUnaryOperator: anUnaryOperator [
  [ super visitUnaryOperator: anUnaryOperator ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitVariableDeclaration: aVariableDeclaration [
  [ super visitVariableDeclaration: aVariableDeclaration ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitVariableDefinition: aVariableDefinition [
  [ super visitVariableDefinition: aVariableDefinition ] on: AssertionFailure do: [ errors := errors + 1 ]
]

{ #category : #visiting }
ASTCStructureValidatorVisitor >> visitWhile: aWhile [
  [ super visitWhile: aWhile ] on: AssertionFailure do: [ errors := errors + 1 ]
]
