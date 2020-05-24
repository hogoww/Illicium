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
	self assert: idsFound keys asSet equals: idsExpected asSet.
	idsFound do: [ :aCollection | self assert: aCollection size equals: 1 ].
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneEmptyStructDefinition [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCStructureDefinition new
		declaration: (ASTCStructureDeclaration new id: #druss asCIdentifierNode) ;
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDefinition [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCFunctionDefinition new
		declaration: (ASTCFunctionDeclaration new
			qualifiers: OrderedCollection new;
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself);
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDefinitionWithAConflictingDeclarationInBody [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCFunctionDefinition new
		declaration: (ASTCFunctionDeclaration new
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself);
			addStatement: (ASTCVariableDeclaration new id: #druss asCIdentifierNode ; type: #int asCTypeNode yourself);
		yourself)	.
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneFunctionDefinitionWithANonConflictingDeclarationInBody [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCFunctionDefinition new
		declaration: (ASTCFunctionDeclaration new
			type: #int asCTypeNode;
			id: #druss asCIdentifierNode;
			yourself);
			addStatement: (ASTCVariableDeclaration new id: #snaga asCIdentifierNode ; type: #int asCTypeNode yourself);
		yourself)	.
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
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

{ #category : #'tests-compilationUnit' }
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

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testCompilationUnitWithOneVariableDeclaration [
	| scope |
	scope := ASTCCompilationUnit new.
	scope add: (ASTCVariableDeclaration new
		type: #int asCTypeNode;
		id: #druss asCIdentifierNode;
		yourself).
	
	self assert: scope containsAll: #( druss )
]

{ #category : #'tests-compilationUnit' }
FACollectIdsDeclaredInScopeTest >> testEmptyCompilationUnit [
	| scope |
	scope := ASTCCompilationUnit new.
	
	self assert: scope containsAll: #()
]
