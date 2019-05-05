Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen-visitor'
}

{ #category : #initialization }
ASTCPrinterVisitor >> initialize [
	stream := String new writeStream.
	currentDepth:=0.
]

{ #category : #printing }
ASTCPrinterVisitor >> printOn:aStream [
	^aStream nextPutAll: self stream contents.
]

{ #category : #printing }
ASTCPrinterVisitor >> printTabCount: aNumber [
		1 to: aNumber do:[:i| stream tab.]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
	^stream
]

{ #category : #printing }
ASTCPrinterVisitor >> toTranscript [
	Transcript show:self ;cr.
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCAbstractWhile:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCAbstractWhile'.
	stream << anASTCAbstractWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCAbstractWhile: anASTCAbstractWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCBlock:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCBlock'.
	stream << anASTCBlock printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCBlock: anASTCBlock.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCCompilationUnit:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCCompilationUnit'.
	stream << anASTCCompilationUnit printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCCompilationUnit: anASTCCompilationUnit.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDeclaration:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCDeclaration'.
	stream << anASTCDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCDeclaration: anASTCDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDeclarationStatement:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCDeclarationStatement'.
	stream << anASTCDeclarationStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCDeclarationStatement: anASTCDeclarationStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDefinition:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCDefinition'.
	stream << anASTCDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCDefinition: anASTCDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDoWhile:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCDoWhile'.
	stream << anASTCDoWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCDoWhile: anASTCDoWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCExpression:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCExpression'.
	stream << anASTCExpression printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCExpression: anASTCExpression.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCExpressionStatement:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCExpressionStatement'.
	stream << anASTCExpressionStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCExpressionStatement: anASTCExpressionStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFor:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCFor'.
	stream << anASTCFor printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCFor: anASTCFor.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionCall:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCFunctionCall'.
	stream << anASTCFunctionCall printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCFunctionCall: anASTCFunctionCall.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionDeclaration:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCFunctionDeclaration'.
	stream << anASTCFunctionDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCFunctionDeclaration: anASTCFunctionDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionDefinition:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCFunctionDefinition'.
	stream << anASTCFunctionDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCFunctionDefinition: anASTCFunctionDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCIdentifier:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCIdentifier'.
	stream << anASTCIdentifier printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCIdentifier: anASTCIdentifier.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCIf:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCIf'.
	stream << anASTCIf printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCIf: anASTCIf.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCLiteral:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCLiteral'.
	stream << anASTCLiteral printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCLiteral: anASTCLiteral.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCLoop:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCLoop'.
	stream << anASTCLoop printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCLoop: anASTCLoop.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCNode:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCNode'.
	stream << anASTCNode printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCNode: anASTCNode.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCOperator:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCOperator'.
	stream << anASTCOperator printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCOperator: anASTCOperator.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCProject:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCProject'.
	stream << anASTCProject printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCProject: anASTCProject.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCReturn:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCReturn'.
	stream << anASTCReturn printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCReturn: anASTCReturn.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCStatement:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCStatement'.
	stream << anASTCStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCStatement: anASTCStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCType:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCType'.
	stream << anASTCType printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCType: anASTCType.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCVariableDeclaration:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCVariableDeclaration'.
	stream << anASTCVariableDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCVariableDeclaration: anASTCVariableDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCVariableDefinition:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCVariableDefinition'.
	stream << anASTCVariableDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCVariableDefinition: anASTCVariableDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCWhile:
	stream [ cr.
	self printTabCount: currentDepth.
	stream << $( << 'anASTCWhile'.
	stream << anASTCWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitASTCWhile: anASTCWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]
