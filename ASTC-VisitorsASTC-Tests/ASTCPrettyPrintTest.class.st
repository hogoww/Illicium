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
	self flag:#shouldFail. "temporary, should be adjusted after work on operator priorities"
	"should equal 'a == b'"
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
	| statement |
	statement := ASTCBreak new.
	
	self assert: statement isStatement.
	self assert: statement prettyPrint equals: 'break'.
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
	| operator |
	self flag:#shouldFail. "temporary, should be adjusted after work on operator priorities"
	"should equal 'a == b'"
	operator := ASTCStructureDeclaration new id:(ASTCIdentifier new id: #a).
	
	self assert: operator isStructureDeclaration.
	self assert: operator prettyPrint equals: 'struct a'.
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
