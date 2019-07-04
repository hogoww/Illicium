Class {
	#name : #ASTCDebugStructureVisitor,
	#superclass : #ASTCWalkerVisitor,
	#category : #'ASTC-Gen-visitor'
}

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCAbstractWhile:anASTCAbstractWhile [
	self visitASTCLoop:anASTCAbstractWhile.


	super visitASTCAbstractWhile:anASTCAbstractWhile
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCBlock:anASTCBlock [
	self visitASTCStatement:anASTCBlock.

	anASTCBlock statements do:[:each| self assert: each isASTCStatement].

	super visitASTCBlock:anASTCBlock
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCCompilationUnit:anASTCCompilationUnit [
	anASTCCompilationUnit definitions do:[:each| self assert: each isASTCDefinition].
	anASTCCompilationUnit declarations do:[:each| self assert: each isASTCDeclaration].

	super visitASTCCompilationUnit:anASTCCompilationUnit
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDeclaration:anASTCDeclaration [
	self visitASTCNode:anASTCDeclaration.

	anASTCDeclaration id ifNotNil:[ self assert:anASTCDeclaration id isASTCIdentifier ].

	super visitASTCDeclaration:anASTCDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDeclarationStatement:anASTCDeclarationStatement [
	self visitASTCStatement:anASTCDeclarationStatement.

	anASTCDeclarationStatement declaration ifNotNil:[ "self assert:anASTCDeclarationStatement declaration isASTCDeclaration "].

	super visitASTCDeclarationStatement:anASTCDeclarationStatement
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDefinition:anASTCDefinition [
	self visitASTCNode:anASTCDefinition.

	anASTCDefinition declaration ifNotNil:[ self assert:anASTCDefinition declaration isASTCDeclaration ].

	super visitASTCDefinition:anASTCDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDoWhile:anASTCDoWhile [
	self visitASTCAbstractWhile:anASTCDoWhile.


	super visitASTCDoWhile:anASTCDoWhile
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCExpression:anASTCExpression [
	self visitASTCNode:anASTCExpression.


	super visitASTCExpression:anASTCExpression
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCExpressionStatement:anASTCExpressionStatement [
	self visitASTCStatement:anASTCExpressionStatement.

	anASTCExpressionStatement expression ifNotNil:[ self assert:anASTCExpressionStatement expression isASTCExpression ].

	super visitASTCExpressionStatement:anASTCExpressionStatement
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFor:anASTCFor [
	self visitASTCLoop:anASTCFor.

	anASTCFor iteratorDecl ifNotNil:[ self assert:anASTCFor iteratorDecl isASTCVariableDeclaration ].
	anASTCFor iteratorModification ifNotNil:[ self assert:anASTCFor iteratorModification isASTCExpression ].

	super visitASTCFor:anASTCFor
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionCall:anASTCFunctionCall [
	self visitASTCExpression:anASTCFunctionCall.

	anASTCFunctionCall id ifNotNil:[ self assert:anASTCFunctionCall id isASTCIdentifier ].
	anASTCFunctionCall arguments do:[:each| self assert: each isASTCExpression].

	super visitASTCFunctionCall:anASTCFunctionCall
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionDeclaration:anASTCFunctionDeclaration [
	self visitASTCDeclaration:anASTCFunctionDeclaration.

	anASTCFunctionDeclaration type ifNotNil:[ self assert:anASTCFunctionDeclaration type isASTCType ].
	anASTCFunctionDeclaration parameters do:[:each| self assert: each isASTCVariableDeclaration].

	super visitASTCFunctionDeclaration:anASTCFunctionDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionDefinition:anASTCFunctionDefinition [
	self visitASTCDefinition:anASTCFunctionDefinition.

	anASTCFunctionDefinition body ifNotNil:[ self assert:anASTCFunctionDefinition body isASTCBlock ].

	super visitASTCFunctionDefinition:anASTCFunctionDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCIdentifier:anASTCIdentifier [
	self visitASTCExpression:anASTCIdentifier.


	super visitASTCIdentifier:anASTCIdentifier
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCIf:anASTCIf [
	self visitASTCStatement:anASTCIf.

	anASTCIf condition ifNotNil:[ self assert:anASTCIf condition isASTCExpression ].
	anASTCIf then ifNotNil:[ self assert:anASTCIf then isASTCStatement ].
	anASTCIf else ifNotNil:[ self assert:anASTCIf else isASTCStatement ].

	super visitASTCIf:anASTCIf
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCLiteral:anASTCLiteral [
	self visitASTCExpression:anASTCLiteral.


	super visitASTCLiteral:anASTCLiteral
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCLoop:anASTCLoop [
	self visitASTCStatement:anASTCLoop.

	anASTCLoop condition ifNotNil:[ self assert:anASTCLoop condition isASTCExpression ].
	anASTCLoop body ifNotNil:[ self assert:anASTCLoop body isASTCStatement ].

	super visitASTCLoop:anASTCLoop
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCNode:anASTCNode [

	super visitASTCNode:anASTCNode
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCOperator:anASTCOperator [
	self visitASTCExpression:anASTCOperator.

	anASTCOperator operands do:[:each| self assert: each isASTCExpression].

	super visitASTCOperator:anASTCOperator
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCProject:anASTCProject [
	anASTCProject compilationUnits do:[:each| self assert: each isASTCCompilationUnit].

	super visitASTCProject:anASTCProject
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCReturn:anASTCReturn [
	self visitASTCStatement:anASTCReturn.

	anASTCReturn expression ifNotNil:[ self assert:anASTCReturn expression isASTCExpression ].

	super visitASTCReturn:anASTCReturn
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCStatement:anASTCStatement [
	self visitASTCNode:anASTCStatement.


	super visitASTCStatement:anASTCStatement
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCStructureDeclaration:anASTCStructureDeclaration [
	self visitASTCDeclaration:anASTCStructureDeclaration.


	super visitASTCStructureDeclaration:anASTCStructureDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCStructureDefinition:anASTCStructureDefinition [
	self visitASTCDefinition:anASTCStructureDefinition.

	anASTCStructureDefinition members do:[:each| self assert: each isASTCVariableDeclaration].

	super visitASTCStructureDefinition:anASTCStructureDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCType:anASTCType [
	self visitASTCNode:anASTCType.


	super visitASTCType:anASTCType
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCVariableDeclaration:anASTCVariableDeclaration [
	self visitASTCDeclaration:anASTCVariableDeclaration.

	anASTCVariableDeclaration type ifNotNil:[ self assert:anASTCVariableDeclaration type isASTCType ].

	super visitASTCVariableDeclaration:anASTCVariableDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCVariableDefinition:anASTCVariableDefinition [
	self visitASTCDefinition:anASTCVariableDefinition.

	anASTCVariableDefinition init ifNotNil:[ self assert:anASTCVariableDefinition init isASTCExpression ].

	super visitASTCVariableDefinition:anASTCVariableDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCWhile:anASTCWhile [
	self visitASTCAbstractWhile:anASTCWhile.


	super visitASTCWhile:anASTCWhile
]
