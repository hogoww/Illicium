Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen'
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
ASTCPrinterVisitor >> visitASTCAbstractWhile: anASTCAbstractWhile [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCAbstractWhile'.
	stream << (anASTCAbstractWhile printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCAbstractWhile:anASTCAbstractWhile.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCBlock: anASTCBlock [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCBlock'.
	stream << (anASTCBlock printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCBlock:anASTCBlock.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCCompilationUnit: anASTCCompilationUnit [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCCompilationUnit'.
	stream << (anASTCCompilationUnit printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCCompilationUnit:anASTCCompilationUnit.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDeclarationStatement: anASTCDeclarationStatement [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCDeclarationStatement'.
	stream << (anASTCDeclarationStatement printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCDeclarationStatement:anASTCDeclarationStatement.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDoWhile: anASTCDoWhile [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCDoWhile'.
	stream << (anASTCDoWhile printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCDoWhile:anASTCDoWhile.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCExpression: anASTCExpression [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCExpression'.
	stream << (anASTCExpression printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCExpression:anASTCExpression.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCExpressionStatement: anASTCExpressionStatement [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCExpressionStatement'.
	stream << (anASTCExpressionStatement printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCExpressionStatement:anASTCExpressionStatement.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFor: anASTCFor [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCFor'.
	stream << (anASTCFor printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCFor:anASTCFor.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionCall: anASTCFunctionCall [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCFunctionCall'.
	stream << (anASTCFunctionCall printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCFunctionCall:anASTCFunctionCall.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionDeclaration: anASTCFunctionDeclaration [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCFunctionDeclaration'.
	stream << (anASTCFunctionDeclaration printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCFunctionDeclaration:anASTCFunctionDeclaration.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCFunctionDefinition'.
	stream << (anASTCFunctionDefinition printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCFunctionDefinition:anASTCFunctionDefinition.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCIdentifier: anASTCIdentifier [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCIdentifier'.
	stream << (anASTCIdentifier printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCIdentifier:anASTCIdentifier.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCIf: anASTCIf [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCIf'.
	stream << (anASTCIf printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCIf:anASTCIf.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCLiteral: anASTCLiteral [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCLiteral'.
	stream << (anASTCLiteral printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCLiteral:anASTCLiteral.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCLoop: anASTCLoop [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCLoop'.
	stream << (anASTCLoop printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCLoop:anASTCLoop.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCNode: anASTCNode [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCNode'.
	stream << (anASTCNode printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCNode:anASTCNode.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCOperator: anASTCOperator [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCOperator'.
	stream << (anASTCOperator printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCOperator:anASTCOperator.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCProject: anASTCProject [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCProject'.
	stream << (anASTCProject printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCProject:anASTCProject.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCReturn: anASTCReturn [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCReturn'.
	stream << (anASTCReturn printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCReturn:anASTCReturn.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCStatement: anASTCStatement [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCStatement'.
	stream << (anASTCStatement printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCStatement:anASTCStatement.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCType: anASTCType [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCType'.
	stream << (anASTCType printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCType:anASTCType.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCVariableDeclaration: anASTCVariableDeclaration [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCVariableDeclaration'.
	stream << (anASTCVariableDeclaration printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCVariableDeclaration:anASTCVariableDeclaration.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCVariableDefinition: anASTCVariableDefinition [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCVariableDefinition'.
	stream << (anASTCVariableDefinition printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCVariableDefinition:anASTCVariableDefinition.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCWhile: anASTCWhile [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCWhile'.
	stream << (anASTCWhile printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCWhile:anASTCWhile.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCdeclaration: anASTCdeclaration [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCdeclaration'.
	stream << (anASTCdeclaration printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCdeclaration:anASTCdeclaration.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCdefinition: anASTCdefinition [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCdefinition'.
	stream << (anASTCdefinition printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCdefinition:anASTCdefinition.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]
