Class {
	#name : #ASTCDebugStructureVisitor,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitBlock: aBlock [
	super visitBlock: aBlock.
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | self assert: aStatements isStatement ] ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitCompilationUnit: aCompilationUnit [
	super visitCompilationUnit: aCompilationUnit.
	aCompilationUnit definitions
		ifNotNil: [ :definitions | 
			definitions
				do: [ :aDefinitions | self assert: aDefinitions isDefinition ] ].
	aCompilationUnit declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | self assert: aDeclarations isDeclaration ] ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitDeclaration: aDeclaration [
	super visitDeclaration: aDeclaration.
	aDeclaration id ifNotNil: [ :anId | self assert: anId isIdentifier ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitDefinition: aDefinition [
	super visitDefinition: aDefinition.
	aDefinition declaration
		ifNotNil: [ :aDeclaration | self assert: aDeclaration isDeclaration ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitExpressionStatement: anExpressionStatement [
	super visitExpressionStatement: anExpressionStatement.
	anExpressionStatement expression
		ifNotNil: [ :anExpression | self assert: anExpression isExpression ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitFor: aFor [
	super visitFor: aFor.
	aFor iteratorDefinition
		ifNotNil: [ :anIteratorDefinition | self assert: anIteratorDefinition isVariableDefinition ].
	aFor iteratorModification
		ifNotNil: [ :anIteratorModification | self assert: anIteratorModification isExpression ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitFunctionCall: aFunctionCall [
	super visitFunctionCall: aFunctionCall.
	aFunctionCall arguments
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | self assert: anArguments isExpression ] ].
	aFunctionCall id ifNotNil: [ :anId | self assert: anId isIdentifier ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	super visitFunctionDeclaration: aFunctionDeclaration.
	aFunctionDeclaration parameters
		ifNotNil: [ :parameters | 
			parameters
				do: [ :aParameters | self assert: aParameters isVariableDeclaration ] ].
	aFunctionDeclaration type
		ifNotNil: [ :aType | self assert: aType isType ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitFunctionDefinition: aFunctionDefinition [
	super visitFunctionDefinition: aFunctionDefinition.
	aFunctionDefinition body
		ifNotNil: [ :aBody | self assert: aBody isBlock ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitIf: anIf [
	super visitIf: anIf.
	anIf condition
		ifNotNil: [ :aCondition | self assert: aCondition isExpression ].
	anIf then ifNotNil: [ :aThen | self assert: aThen isStatement ].
	anIf else ifNotNil: [ :anElse | self assert: anElse isStatement ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitLoop: aLoop [
	super visitLoop: aLoop.
	aLoop condition
		ifNotNil: [ :aCondition | self assert: aCondition isExpression ].
	aLoop body ifNotNil: [ :aBody | self assert: aBody isStatement ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitNode: aNode [
	super visitNode: aNode.
	aNode parent ifNotNil: [ :aParent | self assert: aParent isNode ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitOperator: anOperator [
	super visitOperator: anOperator.
	anOperator operands
		ifNotNil:
			[ :operands | operands do: [ :anOperands | "self assert: anOperands isExpression" ] ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitProject: aProject [
	super visitProject: aProject.
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | self assert: aCompilationUnits isCompilationUnit ] ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitReturn: aReturn [
	super visitReturn: aReturn.
	aReturn expression
		ifNotNil: [ :anExpression | self assert: anExpression isExpression ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitStructureDefinition: aStructureDefinition [
	super visitStructureDefinition: aStructureDefinition.
	aStructureDefinition members
		ifNotNil: [ :members | 
			members
				do: [ :aMembers | self assert: aMembers isVariableDeclaration ] ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitVariableDeclaration: aVariableDeclaration [
	super visitVariableDeclaration: aVariableDeclaration.
	aVariableDeclaration type
		ifNotNil: [ :aType | self assert: aType isType ]
]

{ #category : #visiting }
ASTCDebugStructureVisitor >> visitVariableDefinition: aVariableDefinition [
	super visitVariableDefinition: aVariableDefinition.
	aVariableDefinition init
		ifNotNil: [ :anInit | self assert: anInit isExpression ]
]
