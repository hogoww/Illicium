Class {
	#name : #ASTCWalkerVisitor,
	#superclass : #ASTCVisitor,
	#category : #'ASTC-Gen-visitors'
}

{ #category : #visiting }
ASTCWalkerVisitor >> visitAbstractWhile: anAbstractWhile [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitBlock: aBlock [
	aBlock propertyName
		ifNotNil: [ :statements | statements do: [ :aStatements | aStatements acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	aCompilationUnit propertyName
		ifNotNil: [ :definitions | definitions do: [ :aDefinitions | aDefinitions acceptVisitor: self ] ].
	aCompilationUnit propertyName
		ifNotNil: [ :declarations | 
			declarations
				do: [ :aDeclarations | aDeclarations acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclaration: aDeclaration [
	aDeclaration propertyName
		ifNotNil: [ :anId | anId acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	aDeclarationStatement propertyName
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDefinition: aDefinition [
	aDefinition propertyName
		ifNotNil: [ :aDeclaration | aDeclaration acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDoWhile: aDoWhile [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpression: anExpression [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement propertyName
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFor: aFor [
	aFor propertyName
		ifNotNil: [ :anIteratorDefinition | anIteratorDefinition acceptVisitor: self ].
	aFor propertyName
		ifNotNil: [ :anIteratorModification | anIteratorModification acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionCall: aFunctionCall [
	aFunctionCall propertyName
		ifNotNil: [ :anId | anId acceptVisitor: self ].
	aFunctionCall propertyName
		ifNotNil: [ :arguments | arguments do: [ :anArguments | anArguments acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration propertyName
		ifNotNil: [ :aType | aType acceptVisitor: self ].
	aFunctionDeclaration propertyName
		ifNotNil: [ :parameters | parameters do: [ :aParameters | aParameters acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition propertyName
		ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIdentifier: anIdentifier [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIf: anIf [
	anIf propertyName
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	anIf propertyName ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf propertyName ifNotNil: [ :anElse | anElse acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLiteral: aLiteral [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLoop: aLoop [
	aLoop propertyName
		ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	aLoop propertyName ifNotNil: [ :aBody | aBody acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitNode: aNode [
	aNode propertyName
		ifNotNil: [ :aParent | aParent acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOperator: anOperator [
	anOperator propertyName
		ifNotNil: [ :operands | operands do: [ :anOperands | anOperands acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitProject: aProject [
	aProject propertyName
		ifNotNil: [ :compilationUnits | 
			compilationUnits
				do: [ :aCompilationUnits | aCompilationUnits acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitReturn: aReturn [
	aReturn propertyName
		ifNotNil: [ :anExpression | anExpression acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStatement: aStatement [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDeclaration: aStructureDeclaration [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitStructureDefinition: aStructureDefinition [
	aStructureDefinition propertyName
		ifNotNil: [ :members | members do: [ :aMembers | aMembers acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitType: aType [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration propertyName
		ifNotNil: [ :aType | aType acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition propertyName
		ifNotNil: [ :anInit | anInit acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitWhile: aWhile [
	
]
