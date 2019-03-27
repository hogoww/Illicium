Class {
	#name : #ASTCValidator,
	#superclass : #ASTCValidatorDebug,
	#instVars : [
		'isItValid'
	],
	#category : #'ASTC-Extensions-validation'
}

{ #category : #visiting }
ASTCValidator >> initialize [ 
	isItValid:=true.
]

{ #category : #visiting }
ASTCValidator >> isItValid [
	^isItValid
]

{ #category : #visiting }
ASTCValidator >> isItValid: aBoolean [
	isItValid:=aBoolean
]

{ #category : #visiting }
ASTCValidator >> visitASTCBlock: anASTCBlock [
	
	[super visitASTCBlock: anASTCBlock] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCCompilationUnit: anASTCCompilationUnit [

	[super visitASTCCompilationUnit: anASTCCompilationUnit] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCDeclaration: anASTCDeclaration [

	[super visitASTCDeclaration: anASTCDeclaration] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCExpression: anASTCExpression [

	[super visitASTCExpression: anASTCExpression] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCExpressionStatement: anASTCExpressionStatement [

	[super visitASTCExpressionStatement: anASTCExpressionStatement ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCFunctionCall: anASTCFunctionCall [

	[super visitASTCFunctionCall: anASTCFunctionCall ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCFunctionDefinition: anASTCFunctionDefinition [

	[super visitASTCFunctionDefinition: anASTCFunctionDefinition ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCIdentifier: anASTCIdentifier [

	[super visitASTCIdentifier: anASTCIdentifier] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCIf: anASTCIf [

	[super visitASTCIf: anASTCIf] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCLiteral: anASTCLiteral [

	[super visitASTCLiteral: anASTCLiteral] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCNode: anASTCNode [

	[super visitASTCNode: anASTCNode] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCOperator: anASTCOperator [
	
	[super visitASTCOperator: anASTCOperator] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCProject: anASTCProject [

	[super visitASTCProject: anASTCProject] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCReturn: anASTCReturn [

	[super visitASTCReturn: anASTCReturn ] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCStatement: anASTCStatement [

	[super visitASTCStatement: anASTCStatement] on: Error do:[^false].
	^true
]

{ #category : #visiting }
ASTCValidator >> visitASTCType: anASTCType [

	[super visitASTCType: anASTCType] on: Error do:[^false].
	^true
]
