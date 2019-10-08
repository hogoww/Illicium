Class {
	#name : #ASTCSuperclassVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCSuperclassVisitor >> visitAbstractWhile: anAbstractWhile [
	^ super visitLoop: anAbstractWhile
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitBlock: aBlock [
	^ super visitStatement: aBlock
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitCompilationUnit: aCompilationUnit [
	^ super visitNode: aCompilationUnit
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitDeclaration: aDeclaration [
	^ super visitNode: aDeclaration
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitDeclarationStatement: aDeclarationStatement [
	^ super visitStatement: aDeclarationStatement
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitDefinition: aDefinition [
	^ super visitNode: aDefinition
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitDoWhile: aDoWhile [
	^ super visitAbstractWhile: aDoWhile
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitExpression: anExpression [
	^ super visitNode: anExpression
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitExpressionStatement: anExpressionStatement [
	^ super visitStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitFor: aFor [
	^ super visitLoop: aFor
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitFunctionCall: aFunctionCall [
	^ super visitExpression: aFunctionCall
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ super visitDeclaration: aFunctionDeclaration
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitFunctionDefinition: aFunctionDefinition [
	^ super visitDefinition: aFunctionDefinition
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitIdentifier: anIdentifier [
	^ super visitExpression: anIdentifier
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitIf: anIf [
	^ super visitStatement: anIf
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitLiteral: aLiteral [
	^ super visitExpression: aLiteral
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitLoop: aLoop [
	^ super visitStatement: aLoop
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitOperator: anOperator [
	^ super visitExpression: anOperator
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitProject: aProject [
	^ super visitNode: aProject
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitReturn: aReturn [
	^ super visitStatement: aReturn
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitStatement: aStatement [
	^ super visitNode: aStatement
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitStructureDeclaration: aStructureDeclaration [
	^ super visitDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitStructureDefinition: aStructureDefinition [
	^ super visitDefinition: aStructureDefinition
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitType: aType [
	^ super visitNode: aType
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ super visitDeclaration: aVariableDeclaration
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitVariableDefinition: aVariableDefinition [
	^ super visitDefinition: aVariableDefinition
]

{ #category : #visiting }
ASTCSuperclassVisitor >> visitWhile: aWhile [
	^ super visitAbstractWhile: aWhile
]
