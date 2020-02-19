Class {
	#name : #ASTCCompilationUnitTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-Shortcuts'
}

{ #category : #tests }
ASTCCompilationUnitTest >> testAdd [
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
	
	cu debugASTCStructure.
]
