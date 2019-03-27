Class {
	#name : #ASTCValidation,
	#superclass : #ASTCValidationDebug,
	#instVars : [
		'isItValid'
	],
	#category : #'ASTC-Extensions-validation'
}

{ #category : #visiting }
ASTCValidation >> initialize [ 
	isItValid:=true.
]

{ #category : #visiting }
ASTCValidation >> isItValid [
	^isItValid
]

{ #category : #visiting }
ASTCValidation >> isItValid: aBoolean [
	isItValid:=aBoolean
]

{ #category : #visiting }
ASTCValidation >> visitASTCBlock: anASTCBlock [
	
	[super visitASTCBlock: anASTCBlock] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCCompilationUnit: anASTCCompilationUnit [

	[super visitASTCCompilationUnit: anASTCCompilationUnit] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCDeclaration: anASTCDeclaration [

	[super visitASTCDeclaration: anASTCDeclaration] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCExpression: anASTCExpression [

	[super visitASTCExpression: anASTCExpression] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCExpressionStatement: anASTCExpressionStatement [

	[super visitASTCExpressionStatement: anASTCExpressionStatement ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCFunctionCall: anASTCFunctionCall [

	[super visitASTCFunctionCall: anASTCFunctionCall ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCFunctionDefinition: anASTCFunctionDefinition [

	[super visitASTCFunctionDefinition: anASTCFunctionDefinition ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCIdentifier: anASTCIdentifier [

	[super visitASTCIdentifier: anASTCIdentifier] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCIf: anASTCIf [

	[super visitASTCIf: anASTCIf] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCLiteral: anASTCLiteral [

	[super visitASTCLiteral: anASTCLiteral] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCNode: anASTCNode [

	[super visitASTCNode: anASTCNode] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCOperator: anASTCOperator [
	
	[super visitASTCOperator: anASTCOperator] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCProject: anASTCProject [

	[super visitASTCProject: anASTCProject] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCReturn: anASTCReturn [

	[super visitASTCReturn: anASTCReturn ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCStatement: anASTCStatement [

	[super visitASTCStatement: anASTCStatement] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidation >> visitASTCType: anASTCType [

	[super visitASTCType: anASTCType] on: Error do:[^false].
	^true
]
