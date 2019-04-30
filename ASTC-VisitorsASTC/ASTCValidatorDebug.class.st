"
I represent a validation visitor for the AST C, in debug mode.

I enforce types on the AST C by implementing a visitor that flags every type bug.


-anASTCNode acceptVisitor: ASTCValidationDebug new.


"
Class {
	#name : #ASTCValidatorDebug,
	#superclass : #ASTCWalkerVisitor,
	#category : #'ASTC-VisitorsASTC-Validation'
}

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCAbstractWhile: anAbstractWhile [
	self visitASTCLoop: anAbstractWhile.
	
	super visitASTCAbstractWhile: anAbstractWhile.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCBlock: anASTCBlock [
	self visitASTCStatement:anASTCBlock.

	self assert: (anASTCBlock statements allSatisfy:[:each | 
		each isASTCStatement.
		]).
	
	super visitASTCBlock: anASTCBlock.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCCompilationUnit: anASTCCompilationUnit [
	self assert: (anASTCCompilationUnit compilationUnits allSatisfy:[:each |
		each isASTCFunctionDefinition
		]).
	
	super visitASTCCompilationUnit: anASTCCompilationUnit.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCDeclaration: anASTCDeclaration [
	self visitASTCNode: anASTCDeclaration.

	self assert: anASTCDeclaration type isASTCType.
	self assert: anASTCDeclaration id isASTCIdentifier.
	anASTCDeclaration init 
	ifNotNil:[:init| 
		self assert:init isASTCExpression
	].
	
	super visitASTCDeclaration: anASTCDeclaration.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCDeclarationStatement: anASTCDeclarationStatement [
	self visitASTCNode: anASTCDeclarationStatement.

	self assert: anASTCDeclarationStatement declaration isASTCDeclaration.

	super visitASTCDeclaration: anASTCDeclarationStatement.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCDoWhile: aDoWhile [
	self visitASTCAbstractWhile: aDoWhile.
	
	super visitASTCDoWhile: aDoWhile.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCExpression: anASTCExpression [
	self visitASTCNode: anASTCExpression.
		
	super visitASTCExpression: anASTCExpression.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCExpressionStatement: anASTCExpressionStatement [
	self visitASTCStatement: anASTCExpressionStatement.
	
	self assert: anASTCExpressionStatement expression isASTCExpression.
	
	super visitASTCExpressionStatement: anASTCExpressionStatement.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCFunctionCall: anASTCFunctionCall [
	self visitASTCExpression: anASTCFunctionCall.
	
	self assert: anASTCFunctionCall id isASTCIdentifier.
	self assert: (anASTCFunctionCall arguments allSatisfy:[:each|
		each isASTCExpression 
		]).
	
	super visitASTCFunctionCall: anASTCFunctionCall.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	self visitASTCNode:anASTCFunctionDefinition.

	self assert: anASTCFunctionDefinition type isASTCType.
	self assert: anASTCFunctionDefinition id isASTCIdentifier.
	self assert: (anASTCFunctionDefinition parameters allSatisfy:[:each|
		each isASTCDeclaration
		]).
	self assert: anASTCFunctionDefinition body isASTCBlock.
	
	super visitASTCFunctionDefinition: anASTCFunctionDefinition. 
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCIdentifier: anASTCIdentifier [
	self visitASTCExpression: anASTCIdentifier.
	
	self assert: anASTCIdentifier value isASTCIdentifier.
	
	super visitASTCIdentifier: anASTCIdentifier.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCIf: anASTCIf [
	self visitASTCStatement:anASTCIf.

	self assert: anASTCIf condition isASTCExpression.
	self assert: anASTCIf then isASTCStatement.
	self assert: anASTCIf else isASTCStatement.
	
	super visitASTCIf: anASTCIf.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCLoop: aLoop [
	self visitASTCStatement: aLoop.
	
	super visitASTCLoop: aLoop.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCOperator: anASTCOperator [
	self visitASTCExpression: anASTCOperator.
	
	self assert: (anASTCOperator operands allSatisfy: [:each |
		each isASTCExpression
		]).
	
	super visitASTCOperator:anASTCOperator. 
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCProject: anASTCProject [
	self assert:(anASTCProject compilationUnits allSatisfy:[:each| each isCompilationUnit]).
	
	super visitASTCProject: anASTCProject.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCReturn: anASTCReturn [
	self visitASTCStatement: anASTCReturn.
	
	self assert: anASTCReturn expression isASTCExpression.

	super visitASTCReturn: anASTCReturn.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCStatement: anASTCStatement [
	self visitASTCNode:anASTCStatement.

	super visitASTCStatement:anASTCStatement.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCType: anASTCType [
	self visitASTCNode: anASTCType.

	self assert: anASTCType type isClass.

	super visitASTCType: anASTCType.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCWhile: aWhile [
	self visitASTCAbstractWhile: aWhile.

	super visitASTCWhile: aWhile
]
