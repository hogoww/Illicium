"
I represent a validation visitor for the AST C, in debug mode.

I enforce types on the AST C by implementing a visitor that flags every type bug.


-anASTCNode acceptVisitor: ASTCValidationDebug new.


"
Class {
	#name : #ASTCValidatorDebug,
	#superclass : #ASTCWalkerVisitor,
	#category : #'ASTC-Extensions-validation'
}

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCBlock: anASTCBlock [
	self visitASTCStatement:anASTCBlock.
	self flag:#declaration.
	anASTCBlock declarations do:[:each | self assert: each isASTCDeclaration.].
	anASTCBlock statements do:[:each | self assert: each isASTCStatement.].
	
	super visitASTCBlock: anASTCBlock.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCCompilationUnit: anASTCCompilationUnit [
	anASTCCompilationUnit compilationUnits allSatisfy:[:each|
		each assert: each isASTCFunctionDefinition.
		].
	
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
	anASTCFunctionCall arguments do:[:each| self assert: each isASTCExpression ].
	
	super visitASTCFunctionCall: anASTCFunctionCall.
			
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	self visitASTCNode:anASTCFunctionDefinition.

	self assert: anASTCFunctionDefinition type isASTCType.
	self assert: anASTCFunctionDefinition id isASTCIdentifier.
	anASTCFunctionDefinition parameters do:[:each| self assert: each isASTCDeclaration].
	self assert: anASTCFunctionDefinition body isASTCBlock.
	
	super visitASTCFunctionDefinition: anASTCFunctionDefinition. 
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCIdentifier: anASTCIdentifier [
	self visitASTCExpression: anASTCIdentifier.
	
	anASTCIdentifier value isLiteral.
	
	super visitASTCIdentifier: anASTCIdentifier.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCIf: anASTCIf [
	self visitASTCStatement:anASTCIf.

	self assert: anASTCIf predicate isASTCExpression.
	self assert: anASTCIf then isASTCStatement.
	self assert: anASTCIf else isASTCStatement.
	
	super visitASTCIf: anASTCIf.
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCOperator: anASTCOperator [
	self visitASTCExpression: anASTCOperator.
	
	anASTCOperator operands do:[:each|
		self assert: each isASTCExpression.
		].
	
	super visitASTCOperator:anASTCOperator. 
]

{ #category : #visiting }
ASTCValidatorDebug >> visitASTCProject: anASTCProject [
	anASTCProject compilationUnits do:[:each|
		each assert: each isCompilationUnit.
		].
	
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
