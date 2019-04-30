"
I represent a visitor that validate the types of the nodes use in an AST C.

I just answer if the AST C use the corrects types. To debug an AST, use my superClass ASTCValidatorDebug


- anASTCNode acceptVisitor: ASTCValidator new.


 Implementation Points
	I simply use my super class's visit, and catch any exception to return false. If the visit goes till the end, the AST is valid, and i return true.
"
Class {
	#name : #ASTCValidator,
	#superclass : #ASTCValidatorDebug,
	#instVars : [
		'errors'
	],
	#category : #'ASTC-VisitorsASTC-Validation'
}

{ #category : #visiting }
ASTCValidator >> errors [ 
	^errors
]

{ #category : #visiting }
ASTCValidator >> initialize [
	errors:=0.
]

{ #category : #visiting }
ASTCValidator >> isValidAst [
	^errors = 0
]

{ #category : #visiting }
ASTCValidator >> visitASTCAbstractWhile: anAbstractWhile [
	[super visitASTCAbstractWhile: anAbstractWhile ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCBlock: anASTCBlock [
	[super visitASTCBlock: anASTCBlock] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCCompilationUnit: anASTCCompilationUnit [
	[super visitASTCCompilationUnit: anASTCCompilationUnit] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCDeclaration: anASTCDeclaration [
	[super visitASTCDeclaration: anASTCDeclaration ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCDeclarationStatement: anASTCDeclarationStatement [
	[super visitASTCFunctionCall: anASTCDeclarationStatement ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCDefinition: anASTCDefinition [
	[super visitASTCDefinition: anASTCDefinition ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCDoWhile: aDoWhile [
	[super visitASTCDoWhile: aDoWhile ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCExpression: anASTCExpression [
	[super visitASTCExpression: anASTCExpression] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCExpressionStatement: anASTCExpressionStatement [
	[super visitASTCExpressionStatement: anASTCExpressionStatement ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCFunctionCall: anASTCFunctionCall [
	[super visitASTCFunctionCall: anASTCFunctionCall ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCFunctionDeclaration: anASTCFunctionDeclaration [
	[super visitASTCFunctionDeclaration: anASTCFunctionDeclaration ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	[super visitASTCFunctionDefinition: anASTCFunctionDefinition ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCIdentifier: anASTCIdentifier [
	[super visitASTCIdentifier: anASTCIdentifier] on: AssertionFailure do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCIf: anASTCIf [
	[super visitASTCIf: anASTCIf] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCLiteral: anASTCLiteral [
	[super visitASTCLiteral: anASTCLiteral] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCLoop: aLoop [
	[super visitASTCLoop: aLoop] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCNode: anASTCNode [
	[super visitASTCNode: anASTCNode] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCOperator: anASTCOperator [
	[super visitASTCOperator: anASTCOperator] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCProject: anASTCProject [
	[super visitASTCProject: anASTCProject] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCReturn: anASTCReturn [
	[super visitASTCReturn: anASTCReturn ] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCStatement: anASTCStatement [
	[super visitASTCStatement: anASTCStatement] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCType: anASTCType [
	[super visitASTCType: anASTCType] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCVariableDeclaration: anASTCVariableDeclaration [
	[super visitASTCDeclaration: anASTCVariableDeclaration] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCVariableDefinition: anASTCVariableDefinition [
	[super visitASTCDeclaration: anASTCVariableDefinition] on: Error do:[errors:= errors +1].
]

{ #category : #visiting }
ASTCValidator >> visitASTCWhile: aWhile [
	[super visitASTCWhile: aWhile] on: Error do:[errors:= errors +1].
]
