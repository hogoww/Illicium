Class {
	#name : #ASTCPrettyPrintTest,
	#superclass : #TestCase,
	#category : #'ASTC-VisitorsASTC-Tests-Validation'
}

{ #category : #tests }
ASTCPrettyPrintTest >> testAssociativityDifferentPriority1 [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b) * (ASTCIdentifier new id: #c).
	
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
ASTCPrettyPrintTest >> testVisitBreak [
	| breakStatement |
	breakStatement := ASTCBreak new.
	
	self assert: breakStatement isBreak.
	self assert: breakStatement prettyPrint equals: 'break'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitEqualityOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).
	
	self assert: operator isEqualityOperator.
	self assert: operator prettyPrint equals: 'a == b'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitStructureDeclaration [
	| structure |
	structure := ASTCStructureDeclaration new id:(ASTCIdentifier new id: #a; yourself); yourself.
	
	self assert: structure isStructureDeclaration.
	self assert: structure prettyPrint equals: 'struct a'.
]

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitStructureDefinition [
	| operator |
	operator := ASTCStructureDefinition new 
		declaration: (ASTCStructureDeclaration new id:(ASTCIdentifier new id: #heros yourself));
		addMember: (ASTCVariableDeclaration new 
			type: (ASTCType new type: ASTCSmallInteger; yourself); 
			id: (ASTCIdentifier new id: #druss; yourself)) asStatement 
		yourself.
	
	self assert: operator isStructureDefinition.
	self assert: operator prettyPrint equals: 
'struct heros{
  int druss;
}'.
]
