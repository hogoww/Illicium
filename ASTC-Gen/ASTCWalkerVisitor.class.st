Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	super visitAbstractWhile: anAbstractWhile
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAdditionOperator: anAdditionOperator [
	super visitAdditionOperator: anAdditionOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAndOperator: anAndOperator [
	super visitAndOperator: anAndOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitAssignmentOperator: anAssignmentOperator [
	super visitAssignmentOperator: anAssignmentOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBinaryOperator: aBinaryOperator [
	super visitBinaryOperator: aBinaryOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBitwiseAndOperator: aBitwiseAndOperator [
	super visitBitwiseAndOperator: aBitwiseAndOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBlock: aBlock [
	super visitBlock: aBlock.
	aBlock statements
		ifNotNil:
			[ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBreak: aBreak [
	super visitBreak: aBreak
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCastOperator: aCastOperator [
	super visitCastOperator: aCastOperator.
	aCastOperator type ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	super visitCompilationUnit: aCompilationUnit.
	aCompilationUnit definitions
		ifNotNil:
			[ :definitions | definitions do: [ :aDefinitions | aDefinitions acceptVisitor: self ] ].
	aCompilationUnit declarations
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclaration: aDeclaration [
	super visitDeclaration: aDeclaration.
	aDeclaration id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	super visitDeclarationStatement: aDeclarationStatement.
	aDeclarationStatement declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDefinition: aDefinition [
	super visitDefinition: aDefinition.
	aDefinition declaration
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDivisionOperator: aDivisionOperator [
	super visitDivisionOperator: aDivisionOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDoWhile: aDoWhile [
	super visitDoWhile: aDoWhile
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitEqualityOperator: anEqualityOperator [
	super visitEqualityOperator: anEqualityOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpression: anExpression [
	super visitExpression: anExpression
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	super visitExpressionStatement: anExpressionStatement.
	anExpressionStatement expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFor: aFor [
	super visitFor: aFor.
	aFor iteratorDefinition
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor iteratorModification
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionCall: aFunctionCall [
	super visitFunctionCall: aFunctionCall.
	aFunctionCall arguments
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ].
	aFunctionCall id ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	super visitFunctionDeclaration: aFunctionDeclaration.
	aFunctionDeclaration parameters
		ifNotNil:
			[ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ].
	aFunctionDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	super visitFunctionDefinition: aFunctionDefinition.
	aFunctionDefinition body
		ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitGreaterOperator: aGreaterOperator [
	super visitGreaterOperator: aGreaterOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitGreaterOrEqualOperator: aGreaterOrEqualOperator [
	super visitGreaterOrEqualOperator: aGreaterOrEqualOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIdentifier: anIdentifier [
	super visitIdentifier: anIdentifier
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIf: anIf [
	super visitIf: anIf.
	anIf condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIndexerOperator: anIndexerOperator [
	super visitIndexerOperator: anIndexerOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLesserOperator: aLesserOperator [
	super visitLesserOperator: aLesserOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLesserOrEqualOperator: aLesserOrEqualOperator [
	super visitLesserOrEqualOperator: aLesserOrEqualOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLiteral: aLiteral [
	super visitLiteral: aLiteral
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLogicalNotOperator: aLogicalNotOperator [
	super visitLogicalNotOperator: aLogicalNotOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLoop: aLoop [
	super visitLoop: aLoop.
	aLoop condition
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop body ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitMultiplicationOperator: aMultiplicationOperator [
	super visitMultiplicationOperator: aMultiplicationOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOperator: anOperator [
	super visitOperator: anOperator.
	anOperator operands
		ifNotNil:
			[ :operands | operands do: [ :anOperands | anOperands acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOrOperator: anOrOperator [
	super visitOrOperator: anOrOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreDecrementOperator: aPreDecrementOperator [
	super visitPreDecrementOperator: aPreDecrementOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitPreIncrementOperator: aPreIncrementOperator [
	super visitPreIncrementOperator: aPreIncrementOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitProject: aProject [
	super visitProject: aProject.
	aProject compilationUnits
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitReturn: aReturn [
	super visitReturn: aReturn.
	aReturn expression
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStatement: aStatement [
	super visitStatement: aStatement
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructAccessPointerOperator: aStructAccessPointerOperator [
	super visitStructAccessPointerOperator: aStructAccessPointerOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	super visitStructureDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	super visitStructureDefinition: aStructureDefinition.
	aStructureDefinition members
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitSubtractionOperator: aSubtractionOperator [
	super visitSubtractionOperator: aSubtractionOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitType: aType [
	super visitType: aType
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitUnaryOperator: anUnaryOperator [
	super visitUnaryOperator: anUnaryOperator
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	super visitVariableDeclaration: aVariableDeclaration.
	aVariableDeclaration type
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	super visitVariableDefinition: aVariableDefinition.
	aVariableDefinition init
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitWhile: aWhile [
	super visitWhile: aWhile
]
