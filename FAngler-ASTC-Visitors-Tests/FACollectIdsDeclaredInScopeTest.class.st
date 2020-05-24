"
A FACollectIdsDeclaredInScopeTest is a test class for testing the behavior of FACollectIdsDeclaredInScope
"
Class {
	#name : #FACollectIdsDeclaredInScopeTest,
	#superclass : #TestCase,
	#category : #'FAngler-ASTC-Visitors-Tests-Analysis'
}

{ #category : #tests }
FACollectIdsDeclaredInScopeTest >> assert: aScope contains: idsExpected [
	| idsFound |
	idsFound := FACollectIdsDeclaredInScope collectFrom: aScope.

	self assert: idsFound size equals: idsExpected size.
	self assert: idsExpected asBag equals: idsExpected asBag
]

{ #category : #tests }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
		type: #int asCTypeNode;
		id: #druss asCIdentifierNode;
		yourself).
	
	self assert: scope contains: #( druss )
]

{ #category : #tests }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneVariableDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
		type: #int asCTypeNode;
		id: #druss asCIdentifierNode;
		yourself).
	
	self assert: scope contains: #( druss )
]

{ #category : #tests }
FACollectIdsDeclaredInScopeTest >> testEmptyCompilationUnit [
	| scope |
	scope := ASTCCompilationUnit new.
	
	self assert: scope contains: #()
]
