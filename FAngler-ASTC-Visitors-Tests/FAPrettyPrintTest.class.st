Class {
	#name : #FAPrettyPrintTest,
	#superclass : #TestCase,
	#category : #'FAngler-ASTC-Visitors-Tests-Validation'
}

{ #category : #tests }
FAPrettyPrintTest >> testAssociativityDifferentPriority1 [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + (ASTCIdentifier new id: #b) * (ASTCIdentifier new id: #c).
	
	operator debugASTCStructure.
	self assert: operator isMultiplicationOperator.
	
	node := operator leftOperand.
	self assert: node isAdditionOperator.
		node := operator leftOperand leftOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #a.
		
		node := operator leftOperand rightOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #b.
	
	node := operator rightOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #c.
	
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: '(a + b) * c'.
]

{ #category : #tests }
FAPrettyPrintTest >> testAssociativityDifferentPriority2 [
	| operator node |
	operator := (ASTCIdentifier new id: #a) + ((ASTCIdentifier new id: #b) * (ASTCIdentifier new id: #c)).
	
	operator debugASTCStructure.
	self assert: operator isAdditionOperator.
		
	node := operator leftOperand.
	self assert: node isIdentifier.
	self assert: node id equals: #a.
	
	node := operator rightOperand.
	self assert: node isMultiplicationOperator.
		node := operator rightOperand leftOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #b.
		
		node := operator rightOperand rightOperand.
		self assert: node isIdentifier.
		self assert: node id equals: #c.

	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'a + b * c'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitAddressOfOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) asAddressOf.

	operator debugASTCStructure.
	self assert: operator isAddressOfOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: '&a'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitBreak [
	| breakStatement |
	breakStatement := ASTCBreak new.
	
	breakStatement 	debugASTCStructure.
	self assert: breakStatement isBreak.
	self assert: (breakStatement prettyPrintUsing: FAPrettyPrint new) equals: 'break;'.
]

{ #category : #test }
FAPrettyPrintTest >> testVisitCastOperator [
	| structure |
	structure := ASTCCastOperator new 
		type: (ASTCType new type: self class asConstraint ; yourself);
		operand: (ASTCIdentifier new id: #a; yourself);
		yourself.
	
	structure debugASTCStructure.
	self assert: structure isCastOperator.
	self assert: (structure prettyPrintUsing: FAPrettyPrint new) equals: '(struct FAPrettyPrintTest) a'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitEmptyStatement [
	| emptyStatement |
	emptyStatement := ASTCEmptyStatement new.
	
	emptyStatement debugASTCStructure.
	self assert: emptyStatement isEmptyStatement.
	self should: [ emptyStatement prettyPrintUsing: FAPrettyPrint new ] raise: ShouldNotImplement
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitEqualityOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).

	operator debugASTCStructure.
	self assert: operator isEqualityOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'a == b'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitInequalityOperator [
	| operator |
	operator := (ASTCIdentifier new id: #a) notEquals: (ASTCIdentifier new id: #b).

	operator debugASTCStructure.
	self assert: operator isInequalityOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'a != b'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitStructureDeclaration [
	| structure |
	structure := ASTCStructureDeclaration new id:(ASTCIdentifier new id: #a; yourself); yourself.
	
	structure debugASTCStructure.
	self assert: structure isStructureDeclaration.
	self assert: (structure prettyPrintUsing: FAPrettyPrint new) equals: 'struct a'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitStructureDefinition [
	| operator |
	operator := ASTCStructureDefinition new 
		declaration: (ASTCStructureDeclaration new id:(ASTCIdentifier new id: #heros yourself));
		addMember: (ASTCVariableDeclaration new 
			type: (ASTCType new type: IlliciumSmallInteger asConstraint; yourself); 
			id: (ASTCIdentifier new id: #druss; yourself));
		yourself.
	
	operator debugASTCStructure.
	self assert: operator isStructureDefinition.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 
'struct heros{
  int druss;
};'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitTernaryOperatorTest [
	| operator |
	operator := ASTCTernaryConditionalOperator new 
		condition: (ASTCIdentifier new id: #a);
		then: (ASTCIdentifier new id: #b);
		else: (ASTCIdentifier new id: #c);
		yourself.

	operator debugASTCStructure.
	self assert: operator isTernaryConditionalOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'a ? b : c'.
]
