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
	aNumber timesRepeat: [ stream tab ]
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
ASTCPrinterVisitor >> visitIdentifier: anIdentifier [
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'anIdentifier';
		space;
		print: anIdentifier id.
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
ASTCPrinterVisitor >> visitLiteral: aLiteral [
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aLiteral';
		space;
		print: aLiteral value.
	currentDepth := currentDepth + 1.
	super visitLiteral: aLiteral.
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
ASTCPrinterVisitor >> visitNode: aNode [
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aNode';
		space.
	currentDepth := currentDepth + 1.
	super visitNode: aNode.
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
		space;
		print: anOperator symbol.
	currentDepth := currentDepth + 1.
	super visitOperator: anOperator.
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
ASTCPrinterVisitor >> visitType: aType [
	stream cr.
	self printTabCount: currentDepth.
	stream
		<< $(;
		<< 'aType';
		space;
		print: aType type.
	currentDepth := currentDepth + 1.
	super visitType: aType.
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
