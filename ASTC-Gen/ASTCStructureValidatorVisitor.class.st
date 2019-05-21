Class {
	#name : #ASTCStructureValidatorVisitor,
	#superclass : #ASTCDebugStructureVisitor,
	#instVars : [
		'errors'
	],
	#category : #'ASTC-Gen-visitor'
}

{ #category : #accessing }
ASTCStructureValidatorVisitor >> errors [
	^errors
]

{ #category : #initialization }
ASTCStructureValidatorVisitor >> initialize [
	errors:=0.
]

{ #category : #testing }
ASTCStructureValidatorVisitor >> isValidAst [
	^errors=0
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCAbstractWhile: anASTCAbstractWhile [
	[ super visitASTCAbstractWhile: anASTCAbstractWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCBlock: anASTCBlock [
	[ super visitASTCBlock: anASTCBlock ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCCompilationUnit: anASTCCompilationUnit [
	[ super visitASTCCompilationUnit: anASTCCompilationUnit ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCDeclaration: anASTCDeclaration [
	[ super visitASTCDeclaration: anASTCDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCDeclarationStatement: anASTCDeclarationStatement [
	[ super visitASTCDeclarationStatement: anASTCDeclarationStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCDefinition: anASTCDefinition [
	[ super visitASTCDefinition: anASTCDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCDoWhile: anASTCDoWhile [
	[ super visitASTCDoWhile: anASTCDoWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCExpression: anASTCExpression [
	[ super visitASTCExpression: anASTCExpression ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCExpressionStatement: anASTCExpressionStatement [
	[ super visitASTCExpressionStatement: anASTCExpressionStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCFor: anASTCFor [
	[ super visitASTCFor: anASTCFor ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCFunctionCall: anASTCFunctionCall [
	[ super visitASTCFunctionCall: anASTCFunctionCall ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCFunctionDeclaration: anASTCFunctionDeclaration [
	[ super visitASTCFunctionDeclaration: anASTCFunctionDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCFunctionDefinition: anASTCFunctionDefinition [
	[ super visitASTCFunctionDefinition: anASTCFunctionDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCIdentifier: anASTCIdentifier [
	[ super visitASTCIdentifier: anASTCIdentifier ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCIf: anASTCIf [
	[ super visitASTCIf: anASTCIf ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCLiteral: anASTCLiteral [
	[ super visitASTCLiteral: anASTCLiteral ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCLoop: anASTCLoop [
	[ super visitASTCLoop: anASTCLoop ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCNode: anASTCNode [
	[ super visitASTCNode: anASTCNode ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCOperator: anASTCOperator [
	[ super visitASTCOperator: anASTCOperator ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCProject: anASTCProject [
	[ super visitASTCProject: anASTCProject ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCReturn: anASTCReturn [
	[ super visitASTCReturn: anASTCReturn ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCStatement: anASTCStatement [
	[ super visitASTCStatement: anASTCStatement ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCStructureDeclaration: anASTCStructureDeclaration [
	[ super visitASTCStructureDeclaration: anASTCStructureDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCStructureDefinition: anASTCStructureDefinition [
	[ super visitASTCStructureDefinition: anASTCStructureDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCType: anASTCType [
	[ super visitASTCType: anASTCType ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCVariableDeclaration: anASTCVariableDeclaration [
	[ super visitASTCVariableDeclaration: anASTCVariableDeclaration ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCVariableDefinition: anASTCVariableDefinition [
	[ super visitASTCVariableDefinition: anASTCVariableDefinition ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]

{ #category : #check }
ASTCStructureValidatorVisitor >> visitASTCWhile: anASTCWhile [
	[ super visitASTCWhile: anASTCWhile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
]
