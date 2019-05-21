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

	self assert:anASTCBlock funcDefBody isASTCFunctionDefinition.
	anASTCBlock statements do:[:each| self assert: each isASTCStatement].

	super visitASTCBlock:anASTCBlock
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCCompilationUnit:anASTCCompilationUnit [
	self assert:anASTCCompilationUnit project isASTCProject.
	anASTCCompilationUnit definitions do:[:each| self assert: each isASTCDefinition].
	anASTCCompilationUnit declarations do:[:each| self assert: each isASTCDeclaration].

	super visitASTCCompilationUnit:anASTCCompilationUnit
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDeclaration:anASTCDeclaration [
	self visitASTCNode:anASTCDeclaration.

	self assert:anASTCDeclaration compilationUnit isASTCCompilationUnit.
	self assert:anASTCDeclaration id isASTCIdentifier.
	self assert:anASTCDeclaration funcDefinition isASTCDefinition.

	super visitASTCDeclaration:anASTCDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDeclarationStatement:anASTCDeclarationStatement [
	self visitASTCStatement:anASTCDeclarationStatement.

	self assert:anASTCDeclarationStatement declaration isASTCVariableDeclaration.

	super visitASTCDeclarationStatement:anASTCDeclarationStatement
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCDefinition:anASTCDefinition [
	self visitASTCNode:anASTCDefinition.

	self assert:anASTCDefinition compilationUnit isASTCCompilationUnit.
	self assert:anASTCDefinition declaration isASTCDeclaration.

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

	self assert:anASTCExpression initialization isASTCVariableDefinition.
	self assert:anASTCExpression conditionIf isASTCIf.
	self assert:anASTCExpression returnExp isASTCReturn.
	self assert:anASTCExpression expStatement isASTCExpressionStatement.
	self assert:anASTCExpression operatorOperand isASTCOperator.
	self assert:anASTCExpression funcCallArg isASTCFunctionCall.
	self assert:anASTCExpression condition isASTCLoop.
	self assert:anASTCExpression modifIterator isASTCFor.

	super visitASTCExpression:anASTCExpression
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCExpressionStatement:anASTCExpressionStatement [
	self visitASTCStatement:anASTCExpressionStatement.

	self assert:anASTCExpressionStatement expression isASTCExpression.

	super visitASTCExpressionStatement:anASTCExpressionStatement
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFor:anASTCFor [
	self visitASTCLoop:anASTCFor.

	self assert:anASTCFor iteratorDecl isASTCVariableDeclaration.
	self assert:anASTCFor iteratorModification isASTCExpression.

	super visitASTCFor:anASTCFor
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionCall:anASTCFunctionCall [
	self visitASTCExpression:anASTCFunctionCall.

	self assert:anASTCFunctionCall id isASTCIdentifier.
	anASTCFunctionCall arguments do:[:each| self assert: each isASTCExpression].

	super visitASTCFunctionCall:anASTCFunctionCall
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionDeclaration:anASTCFunctionDeclaration [
	self visitASTCDeclaration:anASTCFunctionDeclaration.

	self assert:anASTCFunctionDeclaration type isASTCType.
	anASTCFunctionDeclaration parameters do:[:each| self assert: each isASTCVariableDeclaration].

	super visitASTCFunctionDeclaration:anASTCFunctionDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCFunctionDefinition:anASTCFunctionDefinition [
	self visitASTCDefinition:anASTCFunctionDefinition.

	self assert:anASTCFunctionDefinition body isASTCBlock.

	super visitASTCFunctionDefinition:anASTCFunctionDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCIdentifier:anASTCIdentifier [
	self visitASTCExpression:anASTCIdentifier.

	self assert:anASTCIdentifier FunCallId isASTCFunctionCall.

	super visitASTCIdentifier:anASTCIdentifier
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCIf:anASTCIf [
	self visitASTCStatement:anASTCIf.

	self assert:anASTCIf condition isASTCExpression.
	self assert:anASTCIf then isASTCStatement.
	self assert:anASTCIf else isASTCStatement.

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

	self assert:anASTCLoop condition isASTCExpression.
	self assert:anASTCLoop body isASTCStatement.

	super visitASTCLoop:anASTCLoop
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCNode:anASTCNode [
	self assert:anASTCNode parent isASTCNode.

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

	self assert:anASTCReturn expression isASTCExpression.

	super visitASTCReturn:anASTCReturn
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCStatement:anASTCStatement [
	self visitASTCNode:anASTCStatement.

	self assert:anASTCStatement thenStatement isASTCIf.
	self assert:anASTCStatement elseStatement isASTCIf.
	self assert:anASTCStatement blockStatement isASTCBlock.
	self assert:anASTCStatement body isASTCLoop.

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

	self assert:anASTCType declType isASTCVariableDeclaration.

	super visitASTCType:anASTCType
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCVariableDeclaration:anASTCVariableDeclaration [
	self visitASTCDeclaration:anASTCVariableDeclaration.

	self assert:anASTCVariableDeclaration arguments isASTCFunctionDeclaration.
	self assert:anASTCVariableDeclaration type isASTCType.
	self assert:anASTCVariableDeclaration structureMembers isASTCStructureDefinition.
	self assert:anASTCVariableDeclaration declStatement isASTCDeclarationStatement.
	self assert:anASTCVariableDeclaration declIterator isASTCFor.

	super visitASTCVariableDeclaration:anASTCVariableDeclaration
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCVariableDefinition:anASTCVariableDefinition [
	self visitASTCDefinition:anASTCVariableDefinition.

	self assert:anASTCVariableDefinition init isASTCExpression.

	super visitASTCVariableDefinition:anASTCVariableDefinition
]

{ #category : #check }
ASTCDebugStructureVisitor >> visitASTCWhile:anASTCWhile [
	self visitASTCAbstractWhile:anASTCWhile.


	super visitASTCWhile:anASTCWhile
]
