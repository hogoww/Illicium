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
ASTCPrinterVisitor >> visitASTCDeclaration: anASTCDeclaration [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCDeclaration'.
	stream << (anASTCDeclaration printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCDeclaration:anASTCDeclaration.
	
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