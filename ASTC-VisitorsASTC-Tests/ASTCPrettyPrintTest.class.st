Class {
	#name : #ASTCPrettyPrintTest,
	#superclass : #TestCase,
	#category : #'ASTC-VisitorsASTC-Tests-Validation'
}

{ #category : #tests }
ASTCPrettyPrintTest >> testAssociativityDifferentPriority1 [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b) * (ASTCIdentifier new id: #c).
	
	operator debugASTCStructure.
	self assert: operator isMultiplicationOperator.
	
	node := operator operands at: 1.
	self assert: node isAdditionOperator.
		node := (operator operands at: 1) operands at: 1.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
		
		node := (operator operands at: 1) operands at: 2.
		self assert: node isIdentifier.
		self assert: node id equals: #b.
	
	node := operator operands at: 2.
	self assert: node isIdentifier.
	self assert: node id equals: #c.
	
	self assert: operator prettyPrint equals: '(a + b) * c'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testAssociativityDifferentPriority2 [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + ((ASTCIdentifier new id: #b) * (ASTCIdentifier new id: #c)).
	
	operator debugASTCStructure.
	self assert: operator isAdditionOperator .
		
	node := operator operands at: 1.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator operands at: 2.
	self assert: node isMultiplicationOperator.
		node := (operator operands at: 2) operands at: 1.
		self assert: node isIdentifier.
		self assert: node id equals: #b.
		
		node := (operator operands at: 2) operands at: 2.
		self assert: node isIdentifier.
		self assert: node id equals: #c.

	self assert: operator prettyPrint equals: 'a + b * c'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitAddressOfOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) asAddressOf.

	operator debugASTCStructure.
	self assert: operator isAddressOfOperator.
	self assert: operator prettyPrint equals: '&a'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitBreak [
	| breakStatement |
	breakStatement := ASTCBreak new.
	
	breakStatement 	debugASTCStructure.
	self assert: breakStatement isBreak.
	self assert: breakStatement prettyPrint equals: 'break'.
]

{ #category : #test }
ASTCPrettyPrintTest >> testVisitCastOperator [
	| structure |
	structure := ASTCCastOperator new 
		type: (ASTCType new type: self class asConstraint ; yourself);
		addOperand: (ASTCIdentifier new id: #a; yourself);
		yourself.
	
	structure debugASTCStructure.
	self assert: structure isCastOperator.
	self assert: structure prettyPrint equals: '(struct ASTCPrettyPrintTest) a'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitEmptyStatement [
	| emptyStatement |
	emptyStatement := ASTCEmptyStatement new.
	
	emptyStatement debugASTCStructure.
	self assert: emptyStatement isEmptyStatement.
	self assert: emptyStatement prettyPrint equals: ''.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitEqualityOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).

	operator debugASTCStructure.
	self assert: operator isEqualityOperator.
	self assert: operator prettyPrint equals: 'a == b'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitInequalityOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) notEquals: (ASTCIdentifier new id: #b).

	operator debugASTCStructure.
	self assert: operator isInequalityOperator.
	self assert: operator prettyPrint equals: 'a != b'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitStructureDeclaration [
	| structure |
	structure := ASTCStructureDeclaration new id:(ASTCIdentifier new id: #a; yourself); yourself.
	
	structure debugASTCStructure.
	self assert: structure isStructureDeclaration.
	self assert: structure prettyPrint equals: 'struct a'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitStructureDefinition [
	| operator |
	operator := ASTCStructureDefinition new 
		declaration: (ASTCStructureDeclaration new id:(ASTCIdentifier new id: #heros yourself));
		addMember: (ASTCVariableDeclaration new 
			type: (ASTCType new type: ASTCSmallInteger asConstraint; yourself); 
			id: (ASTCIdentifier new id: #druss; yourself));
		yourself.
	
	operator debugASTCStructure.
	self assert: operator isStructureDefinition.
	self assert: operator prettyPrint equals: 
'struct heros{
  int druss;
};'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitTernaryOperatorTest [
	| operator |
	operator := (ASTCIdentifier new id: #a) then: (ASTCIdentifier new id: #b) else: (ASTCIdentifier new id: #c).

	operator debugASTCStructure.
	self assert: operator isTernaryConditionalOperator.
	self assert: operator prettyPrint equals: 'a ? b : c'.
]
