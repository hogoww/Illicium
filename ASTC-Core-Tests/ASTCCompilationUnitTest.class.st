Class {
	#name : #ASTCCompilationUnitTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-Shortcuts'
}

{ #category : #tests }
ASTCCompilationUnitTest >> testAddCompilationUnitToCompilationUnit [
	| definition cu targetCu |
	definition := ASTCVariableDefinition new 
		declaration: (ASTCVariableDeclaration new id: (ASTCIdentifier new id: #i; yourself);
			type: (ASTCType new type: SmallInteger asTypeReification ; yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	self assert: cu variableDeclarations size equals: 0.

	
	targetCu := ASTCCompilationUnit new.
	targetCu add: cu.
	
	self assert: targetCu definitions size equals: 1.
	self assert: targetCu definitions anyOne equals: definition.
	self assert: targetCu variableDeclarations size equals: 0.
	targetCu debugASTCStructure.
]

{ #category : #tests }
ASTCCompilationUnitTest >> testAddDefinitionToCompilationUnit [
	| definition cu |
	definition := ASTCVariableDefinition new 
		declaration: (ASTCVariableDeclaration new id: (ASTCIdentifier new id: #i; yourself);
			type: (ASTCType new type: SmallInteger asTypeReification ; yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	
	self assert: definition isDefinition.
	self assert: cu isCompilationUnit.
	definition debugASTCStructure.
	cu debugASTCStructure.
	
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	self assert: cu variableDeclarations size equals: 0.
	cu debugASTCStructure.
]

{ #category : #tests }
ASTCCompilationUnitTest >> testAddFunctionDefinitionToCompilationUnit [
	| definition cu |
	definition := ASTCFunctionDefinition new 
		declaration: (ASTCFunctionDeclaration new 
			id: (ASTCIdentifier new id: #i; yourself);
				type: (ASTCType new type: SmallInteger asTypeReification ; 
				yourself)
		 yourself);
		yourself.
	cu := ASTCCompilationUnit new.
	
	self assert: definition isFunctionDefinition.
	self assert: cu isCompilationUnit.
	definition debugASTCStructure.
	cu debugASTCStructure.
	
	cu add: definition.
	self assert: cu definitions size equals: 1.
	self assert: cu definitions anyOne equals: definition.
	self assert: cu functionDeclarations size equals: 1.
	self assert: cu functionDeclarations anyOne equals: definition declaration.
	cu debugASTCStructure.
]
