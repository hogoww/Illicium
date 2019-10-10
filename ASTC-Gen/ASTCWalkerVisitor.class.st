Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCSuperclassVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	super visitAbstractWhile: anAbstractWhile
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBlock: aBlock [
	super visitBlock: aBlock.
	aBlock propertyName
		ifNotNil:
			[ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	super visitCompilationUnit: aCompilationUnit.
	aCompilationUnit propertyName
		ifNotNil:
			[ :definitions | definitions do: [ :aDefinitions | aDefinitions acceptVisitor: self ] ].
	aCompilationUnit propertyName
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclaration: aDeclaration [
	super visitDeclaration: aDeclaration.
	aDeclaration propertyName
		ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	super visitDeclarationStatement: aDeclarationStatement.
	aDeclarationStatement propertyName
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDefinition: aDefinition [
	super visitDefinition: aDefinition.
	aDefinition propertyName
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDoWhile: aDoWhile [
	super visitDoWhile: aDoWhile
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpression: anExpression [
	super visitExpression: anExpression
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	super visitExpressionStatement: anExpressionStatement.
	anExpressionStatement propertyName
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFor: aFor [
	super visitFor: aFor.
	aFor propertyName
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor propertyName
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionCall: aFunctionCall [
	super visitFunctionCall: aFunctionCall.
	aFunctionCall propertyName
		ifNotNil: [ :anId | anId acceptVisitor: self ].
	aFunctionCall propertyName
		ifNotNil:
			[ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	super visitFunctionDeclaration: aFunctionDeclaration.
	aFunctionDeclaration propertyName
		ifNotNil: [ :aType | aType acceptVisitor: self ].
	aFunctionDeclaration propertyName
		ifNotNil:
			[ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	super visitFunctionDefinition: aFunctionDefinition.
	aFunctionDefinition propertyName
		ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIdentifier: anIdentifier [
	super visitIdentifier: anIdentifier
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIf: anIf [
	super visitIf: anIf.
	anIf propertyName
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf propertyName ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf propertyName ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLiteral: aLiteral [
	super visitLiteral: aLiteral
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLoop: aLoop [
	super visitLoop: aLoop.
	aLoop propertyName
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop propertyName ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitNode: aNode [
	super visitNode: aNode.
	aNode propertyName
		ifNotNil: [ :aParent | aParent acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOperator: anOperator [
	super visitOperator: anOperator.
	anOperator propertyName
		ifNotNil:
			[ :operands | operands do: [ :anOperands | anOperands acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitProject: aProject [
	super visitProject: aProject.
	aProject propertyName
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitReturn: aReturn [
	super visitReturn: aReturn.
	aReturn propertyName
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStatement: aStatement [
	super visitStatement: aStatement
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	super visitStructureDeclaration: aStructureDeclaration
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	super visitStructureDefinition: aStructureDefinition.
	aStructureDefinition propertyName
		ifNotNil:
			[ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitType: aType [
	super visitType: aType
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	super visitVariableDeclaration: aVariableDeclaration.
	aVariableDeclaration propertyName
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	super visitVariableDefinition: aVariableDefinition.
	aVariableDefinition propertyName
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitWhile: aWhile [
	super visitWhile: aWhile
]
