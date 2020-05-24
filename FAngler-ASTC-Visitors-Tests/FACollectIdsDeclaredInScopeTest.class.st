"
A FACollectIdsDeclaredInScopeTest is a test class for testing the behavior of FACollectIdsDeclaredInScope
"
Class {
	#name : #FACollectIdsDeclaredInScopeTest,
	#superclass : #TestCase,
	#category : #'FAngler-ASTC-Visitors-Tests-Analysis'
}

{ #category : #assertions }
FACollectIdsDeclaredInScopeTest >> assert: aScope containsAll: idsExpected [
	| idsFound |
	idsFound := FACollectIdsDeclaredInScope collectFrom: aScope.

	self assert: idsFound size equals: idsExpected size.
	self assert: idsFound keys asSet equals: idsExpected asSet
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneEmptyStructDefinition [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: #druss asCIdentifierNode) ;
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDefinition [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCFunctionDefinition new
		declaration: (ASTCFunctionDeclaration new
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself);
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneStructDefinitionWithOneConflictingMember [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: #druss asCIdentifierNode) ;
		addMember: (ASTCVariableDeclaration new 
			id: #druss asCIdentifierNode;
			type: #int asCTypeNode;
			yourself);
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneStructDefinitionWithOneNonConflictingMember [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: #druss asCIdentifierNode) ;
		addMember: (ASTCVariableDeclaration new 
			id: #Snaga asCIdentifierNode;
			type: #int asCTypeNode;
			yourself);
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneVariableDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
		type: #int asCTypeNode;
		id: #druss asCIdentifierNode;
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-simple' }
FACollectIdsDeclaredInScopeTest >> testEmptyCompilationUnit [
	| scope |
	scope := ASTCCompilationUnit new.
	
	self assert: scope containsAll: #()
]
