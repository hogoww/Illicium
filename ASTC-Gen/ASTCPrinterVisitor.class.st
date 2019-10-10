Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen-visitors'
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
	aNumber timesRepeat: [ :i | stream tab ]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
	^ stream
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
	stream << $( << 'anAbstractWhile'.
	stream << anAbstractWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitAbstractWhile: anAbstractWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitBlock: aBlock [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aBlock'.
	stream << aBlock printProperties.
	currentDepth := currentDepth + 1.
	super visitBlock: aBlock.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitCompilationUnit: aCompilationUnit [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aCompilationUnit'.
	stream << aCompilationUnit printProperties.
	currentDepth := currentDepth + 1.
	super visitCompilationUnit: aCompilationUnit.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDeclaration: aDeclaration [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aDeclaration'.
	stream << aDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitDeclaration: aDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDeclarationStatement: aDeclarationStatement [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aDeclarationStatement'.
	stream << aDeclarationStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitDeclarationStatement: aDeclarationStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDefinition: aDefinition [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aDefinition'.
	stream << aDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitDefinition: aDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitDoWhile: aDoWhile [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aDoWhile'.
	stream << aDoWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitDoWhile: aDoWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitExpression: anExpression [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'anExpression'.
	stream << anExpression printProperties.
	currentDepth := currentDepth + 1.
	super visitExpression: anExpression.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitExpressionStatement: anExpressionStatement [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'anExpressionStatement'.
	stream << anExpressionStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitExpressionStatement: anExpressionStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFor: aFor [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aFor'.
	stream << aFor printProperties.
	currentDepth := currentDepth + 1.
	super visitFor: aFor.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionCall: aFunctionCall [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aFunctionCall'.
	stream << aFunctionCall printProperties.
	currentDepth := currentDepth + 1.
	super visitFunctionCall: aFunctionCall.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aFunctionDeclaration'.
	stream << aFunctionDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitFunctionDeclaration: aFunctionDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitFunctionDefinition: aFunctionDefinition [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aFunctionDefinition'.
	stream << aFunctionDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitFunctionDefinition: aFunctionDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitIdentifier: anIdentifier [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'anIdentifier'.
	stream << anIdentifier printProperties.
	currentDepth := currentDepth + 1.
	super visitIdentifier: anIdentifier.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitIf: anIf [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'anIf'.
	stream << anIf printProperties.
	currentDepth := currentDepth + 1.
	super visitIf: anIf.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLiteral: aLiteral [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aLiteral'.
	stream << aLiteral printProperties.
	currentDepth := currentDepth + 1.
	super visitLiteral: aLiteral.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitLoop: aLoop [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aLoop'.
	stream << aLoop printProperties.
	currentDepth := currentDepth + 1.
	super visitLoop: aLoop.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitNode: aNode [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aNode'.
	stream << aNode printProperties.
	currentDepth := currentDepth + 1.
	super visitNode: aNode.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitOperator: anOperator [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'anOperator'.
	stream << anOperator printProperties.
	currentDepth := currentDepth + 1.
	super visitOperator: anOperator.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitProject: aProject [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aProject'.
	stream << aProject printProperties.
	currentDepth := currentDepth + 1.
	super visitProject: aProject.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitReturn: aReturn [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aReturn'.
	stream << aReturn printProperties.
	currentDepth := currentDepth + 1.
	super visitReturn: aReturn.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStatement: aStatement [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aStatement'.
	stream << aStatement printProperties.
	currentDepth := currentDepth + 1.
	super visitStatement: aStatement.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructureDeclaration: aStructureDeclaration [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aStructureDeclaration'.
	stream << aStructureDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitStructureDeclaration: aStructureDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitStructureDefinition: aStructureDefinition [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aStructureDefinition'.
	stream << aStructureDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitStructureDefinition: aStructureDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitType: aType [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aType'.
	stream << aType printProperties.
	currentDepth := currentDepth + 1.
	super visitType: aType.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitVariableDeclaration: aVariableDeclaration [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aVariableDeclaration'.
	stream << aVariableDeclaration printProperties.
	currentDepth := currentDepth + 1.
	super visitVariableDeclaration: aVariableDeclaration.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitVariableDefinition: aVariableDefinition [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aVariableDefinition'.
	stream << aVariableDefinition printProperties.
	currentDepth := currentDepth + 1.
	super visitVariableDefinition: aVariableDefinition.
	currentDepth := currentDepth - 1.
	stream << ')'
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitWhile: aWhile [
	stream cr.
	self printTabCount: currentDepth.
	stream << $( << 'aWhile'.
	stream << aWhile printProperties.
	currentDepth := currentDepth + 1.
	super visitWhile: aWhile.
	currentDepth := currentDepth - 1.
	stream << ')'
]
