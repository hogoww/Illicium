Class {
	#name : #ASTCHierarchyWalkerVisitor,
	#superclass : #ASTCWalkerVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	super visitAbstractWhile: anAbstractWhile.
	^ self visitLoop: anAbstractWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitBlock: aBlock [
	super visitBlock: aBlock.
	^ self visitStatement: aBlock
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	super visitCompilationUnit: aCompilationUnit.
	^ self visitNode: aCompilationUnit
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclaration: aDeclaration [
	super visitDeclaration: aDeclaration.
	^ self visitNode: aDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	super visitDeclarationStatement: aDeclarationStatement.
	^ self visitStatement: aDeclarationStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDefinition: aDefinition [
	super visitDefinition: aDefinition.
	^ self visitNode: aDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitDoWhile: aDoWhile [
	super visitDoWhile: aDoWhile.
	^ self visitAbstractWhile: aDoWhile
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpression: anExpression [
	super visitExpression: anExpression.
	^ self visitNode: anExpression
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	super visitExpressionStatement: anExpressionStatement.
	^ self visitStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFor: aFor [
	super visitFor: aFor.
	^ self visitLoop: aFor
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionCall: aFunctionCall [
	super visitFunctionCall: aFunctionCall.
	^ self visitExpression: aFunctionCall
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	super visitFunctionDeclaration: aFunctionDeclaration.
	^ self visitDeclaration: aFunctionDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	super visitFunctionDefinition: aFunctionDefinition.
	^ self visitDefinition: aFunctionDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIdentifier: anIdentifier [
	super visitIdentifier: anIdentifier.
	^ self visitExpression: anIdentifier
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitIf: anIf [
	super visitIf: anIf.
	^ self visitStatement: anIf
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLiteral: aLiteral [
	super visitLiteral: aLiteral.
	^ self visitExpression: aLiteral
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitLoop: aLoop [
	super visitLoop: aLoop.
	^ self visitStatement: aLoop
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitNode: aNode [
	super visitNode: aNode
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitOperator: anOperator [
	super visitOperator: anOperator.
	^ self visitExpression: anOperator
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitProject: aProject [
	super visitProject: aProject.
	^ self visitNode: aProject
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitReturn: aReturn [
	super visitReturn: aReturn.
	^ self visitStatement: aReturn
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStatement: aStatement [
	super visitStatement: aStatement.
	^ self visitNode: aStatement
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	super visitStructureDeclaration: aStructureDeclaration.
	^ self visitDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	super visitStructureDefinition: aStructureDefinition.
	^ self visitDefinition: aStructureDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitType: aType [
	super visitType: aType.
	^ self visitNode: aType
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	super visitVariableDeclaration: aVariableDeclaration.
	^ self visitDeclaration: aVariableDeclaration
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	super visitVariableDefinition: aVariableDefinition.
	^ self visitDefinition: aVariableDefinition
]

{ #category : #visiting }
ASTCHierarchyWalkerVisitor >> visitWhile: aWhile [
	super visitWhile: aWhile.
	^ self visitAbstractWhile: aWhile
]
