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
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitCompilationUnit: aCompilationUnit [
	aCompilationUnit propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ].
	aCompilationUnit propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclaration: aDeclaration [
	aDeclaration propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDeclarationStatement: aDeclarationStatement [
	aDeclarationStatement propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitDefinition: aDefinition [
	aDefinition propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
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
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFor: aFor [
	aFor propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	aFor propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionCall: aFunctionCall [
	aFunctionCall propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	aFunctionCall propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	aFunctionDeclaration propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIdentifier: anIdentifier [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitIf: anIf [
	anIf propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	anIf propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	anIf propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLiteral: aLiteral [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitLoop: aLoop [
	aLoop propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ].
	aLoop propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitNode: aNode [
	aNode propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitOperator: anOperator [
	anOperator propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitProject: aProject [
	aProject propertyName
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitReturn: aReturn [
	aReturn propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
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
		ifNotNil: [ :aMember | 
			aMember
				do: [ :aMemberOfCollection | aMemberOfCollection acceptVisitor: self ] ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitType: aType [
	
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition propertyName
		ifNotNil: [ :aMember | aMember acceptVisitor: self ]
]

{ #category : #visiting }
ASTCWalkerVisitor >> visitWhile: aWhile [
	
]
