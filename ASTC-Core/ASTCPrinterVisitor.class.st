Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Core-visitors'
}

{ #category : #initialization }
ASTCPrinterVisitor >> initialize [
  stream := String new writeStream.
  currentDepth := 0
]

{ #category : #printing }
ASTCPrinterVisitor >> printOn: aStream [
  aStream << stream contents
]

{ #category : #printing }
ASTCPrinterVisitor >> printTabCount: aNumber [
  aNumber timesRepeat: [ stream tab ]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
  ^stream
]

{ #category : #printing }
ASTCPrinterVisitor >> toTranscript [
  Transcript
     show: self;
     cr
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAbstractWhile: anAbstractWhile [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAbstractWhile';
     space.
  currentDepth := currentDepth + 1.
  super visitAbstractWhile: anAbstractWhile.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAdditionOperator: anAdditionOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAdditionOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitAdditionOperator: anAdditionOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAddressOfOperator: anAddressOfOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAddressOfOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitAddressOfOperator: anAddressOfOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAndOperator: anAndOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAndOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitAndOperator: anAndOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAssignementAdditionOperator: anAssignementAdditionOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAssignementAdditionOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitAssignementAdditionOperator: anAssignementAdditionOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitAssignmentOperator: anAssignmentOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anAssignmentOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitAssignmentOperator: anAssignmentOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBinaryOperator: aBinaryOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBinaryOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBinaryOperator: aBinaryOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBitLeftShiftOperator: aBitLeftShiftOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBitLeftShiftOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBitLeftShiftOperator: aBitLeftShiftOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBitRightShiftOperator: aBitRightShiftOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBitRightShiftOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBitRightShiftOperator: aBitRightShiftOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBitwiseAndOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBitwiseAndOperator: aBitwiseAndOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBitwiseOrOperator: aBitwiseOrOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBitwiseOrOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBitwiseOrOperator: aBitwiseOrOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBitwiseXorOperator: aBitwiseXorOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBitwiseXorOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitBitwiseXorOperator: aBitwiseXorOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBlock: aBlock [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBlock';
     space.
  currentDepth := currentDepth + 1.
  super visitBlock: aBlock.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBreak: aBreak [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aBreak';
     space.
  currentDepth := currentDepth + 1.
  super visitBreak: aBreak.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitCastOperator: aCastOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aCastOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitCastOperator: aCastOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitCompilationUnit: aCompilationUnit [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aCompilationUnit';
     space.
  currentDepth := currentDepth + 1.
  super visitCompilationUnit: aCompilationUnit.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDeclaration: aDeclaration [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aDeclaration';
     space.
  currentDepth := currentDepth + 1.
  super visitDeclaration: aDeclaration.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDeclarationStatement: aDeclarationStatement [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aDeclarationStatement';
     space.
  currentDepth := currentDepth + 1.
  super visitDeclarationStatement: aDeclarationStatement.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDefinition: aDefinition [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aDefinition';
     space.
  currentDepth := currentDepth + 1.
  super visitDefinition: aDefinition.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDivisionOperator: aDivisionOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aDivisionOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitDivisionOperator: aDivisionOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDoWhile: aDoWhile [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aDoWhile';
     space.
  currentDepth := currentDepth + 1.
  super visitDoWhile: aDoWhile.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitEmptyStatement: anEmptyStatement [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anEmptyStatement';
     space.
  currentDepth := currentDepth + 1.
  super visitEmptyStatement: anEmptyStatement.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitEqualityOperator: anEqualityOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anEqualityOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitEqualityOperator: anEqualityOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitExpression: anExpression [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anExpression';
     space.
  currentDepth := currentDepth + 1.
  super visitExpression: anExpression.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitExpressionStatement: anExpressionStatement [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anExpressionStatement';
     space.
  currentDepth := currentDepth + 1.
  super visitExpressionStatement: anExpressionStatement.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFor: aFor [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aFor';
     space.
  currentDepth := currentDepth + 1.
  super visitFor: aFor.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionCall: aFunctionCall [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aFunctionCall';
     space.
  currentDepth := currentDepth + 1.
  super visitFunctionCall: aFunctionCall.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aFunctionDeclaration';
     space.
  stream print: aFunctionDeclaration qualifiers.
  currentDepth := currentDepth + 1.
  super visitFunctionDeclaration: aFunctionDeclaration.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionDefinition: aFunctionDefinition [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aFunctionDefinition';
     space.
  currentDepth := currentDepth + 1.
  super visitFunctionDefinition: aFunctionDefinition.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitGreaterOperator: aGreaterOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aGreaterOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitGreaterOperator: aGreaterOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aGreaterOrEqualOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitGreaterOrEqualOperator: aGreaterOrEqualOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitIdentifier: anIdentifier [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anIdentifier';
     space.
  stream print: anIdentifier id.
  currentDepth := currentDepth + 1.
  super visitIdentifier: anIdentifier.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitIf: anIf [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anIf';
     space.
  currentDepth := currentDepth + 1.
  super visitIf: anIf.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitIndexerOperator: anIndexerOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anIndexerOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitIndexerOperator: anIndexerOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitInequalityOperator: anInequalityOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anInequalityOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitInequalityOperator: anInequalityOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLesserOperator: aLesserOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aLesserOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitLesserOperator: aLesserOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aLesserOrEqualOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitLesserOrEqualOperator: aLesserOrEqualOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLiteral: aLiteral [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aLiteral';
     space.
  stream print: aLiteral value.
  currentDepth := currentDepth + 1.
  super visitLiteral: aLiteral.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aLogicalNotOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitLogicalNotOperator: aLogicalNotOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLoop: aLoop [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aLoop';
     space.
  currentDepth := currentDepth + 1.
  super visitLoop: aLoop.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitModuloOperator: aModuloOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aModuloOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitModuloOperator: aModuloOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aMultiplicationOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitMultiplicationOperator: aMultiplicationOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitNegationOperator: aNegationOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aNegationOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitNegationOperator: aNegationOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitOperator: anOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitOperator: anOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitOrOperator: anOrOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anOrOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitOrOperator: anOrOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aPreDecrementOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitPreDecrementOperator: aPreDecrementOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aPreIncrementOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitPreIncrementOperator: aPreIncrementOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitPreprocessorIf: aPreprocessorIf [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aPreprocessorIf';
     space.
  currentDepth := currentDepth + 1.
  super visitPreprocessorIf: aPreprocessorIf.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitProject: aProject [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aProject';
     space.
  currentDepth := currentDepth + 1.
  super visitProject: aProject.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitRawCCode: aRawCCode [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aRawCCode';
     space.
  stream print: aRawCCode cCode.
  currentDepth := currentDepth + 1.
  super visitRawCCode: aRawCCode.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitRawDeclaration: aRawDeclaration [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aRawDeclaration';
     space.
  stream print: aRawDeclaration rawDeclaration.
  stream print: aRawDeclaration varName.
  currentDepth := currentDepth + 1.
  super visitRawDeclaration: aRawDeclaration.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitReturn: aReturn [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aReturn';
     space.
  currentDepth := currentDepth + 1.
  super visitReturn: aReturn.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStatement: aStatement [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aStatement';
     space.
  currentDepth := currentDepth + 1.
  super visitStatement: aStatement.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aStructAccessPointerOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitStructAccessPointerOperator: aStructAccessPointerOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructAccessStaticOperator: aStructAccessStaticOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aStructAccessStaticOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitStructAccessStaticOperator: aStructAccessStaticOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructureDeclaration: aStructureDeclaration [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aStructureDeclaration';
     space.
  currentDepth := currentDepth + 1.
  super visitStructureDeclaration: aStructureDeclaration.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructureDefinition: aStructureDefinition [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aStructureDefinition';
     space.
  currentDepth := currentDepth + 1.
  super visitStructureDefinition: aStructureDefinition.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitSubtractionOperator: aSubtractionOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aSubtractionOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitSubtractionOperator: aSubtractionOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitTernaryConditionalOperator: aTernaryConditionalOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aTernaryConditionalOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitTernaryConditionalOperator: aTernaryConditionalOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitType: aType [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aType';
     space.
  stream print: aType type.
  currentDepth := currentDepth + 1.
  super visitType: aType.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitUnaryOperator: anUnaryOperator [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'anUnaryOperator';
     space.
  currentDepth := currentDepth + 1.
  super visitUnaryOperator: anUnaryOperator.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitVariableDeclaration: aVariableDeclaration [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aVariableDeclaration';
     space.
  currentDepth := currentDepth + 1.
  super visitVariableDeclaration: aVariableDeclaration.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitVariableDefinition: aVariableDefinition [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aVariableDefinition';
     space.
  currentDepth := currentDepth + 1.
  super visitVariableDefinition: aVariableDefinition.
  currentDepth := currentDepth - 1.
  stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitWhile: aWhile [
  stream cr.
  self printTabCount: currentDepth.
  stream
     << $(;
     << 'aWhile';
     space.
  currentDepth := currentDepth + 1.
  super visitWhile: aWhile.
  currentDepth := currentDepth - 1.
  stream << ')'
]
