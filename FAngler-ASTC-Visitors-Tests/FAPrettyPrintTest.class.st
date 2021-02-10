Class {
	#name : #FAPrettyPrintTest,
	#superclass : #TestCase,
	#category : #'FAngler-ASTC-Visitors-Tests-Validation'
}

{ #category : #'tests-parenthesis' }
FAPrettyPrintTest >> testArraySubscriptWithOneUnaryOperatorArg [
	| operator |
	"comes from a real bug, hence the specificity of the test."
	operator := 'self' asCIdentifierNode indexAt: 'arg' asCIdentifierNode asAddressOf.
	
	operator debugASTCStructure.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'self[&arg]'.
]

{ #category : #'tests-parenthesis' }
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

{ #category : #'tests-parenthesis' }
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

{ #category : #'tests-parenthesis' }
FAPrettyPrintTest >> testFunctionWithOneSimpleArg [
	| operator |
	"comes from a real bug, hence the specificity of the test."
	operator := ASTCFunctionCall new 
		id: 'function' asCIdentifierNode;
		arguments: { 'arg' asCIdentifierNode };
		yourself.
	
	operator debugASTCStructure.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'function(arg)'.
]

{ #category : #'tests-parenthesis' }
FAPrettyPrintTest >> testFunctionWithOneUnaryOperatorArg [
	| operator |
	"comes from a real bug, hence the specificity of the test."
	operator := ASTCFunctionCall new 
		id: 'function' asCIdentifierNode;
		arguments: { 'arg' asCIdentifierNode asAddressOf };
		yourself.
	
	operator debugASTCStructure.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'function(&arg)'.
]

{ #category : #tests }
FAPrettyPrintTest >> testPrintBinaryOperatorWithBinaryOperatorAsOperands [
	| operator |
	operator := ((ASTCLiteral value: 1) + (ASTCLiteral value: 2)) + ((ASTCLiteral value: 3) + (ASTCLiteral value: 4)).
	operator debugASTCStructure.
	self assert: operator isAdditionOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: '1 + 2 + 3 + 4'.
]

{ #category : #tests }
FAPrettyPrintTest >> testPrintSimpleBinaryOperand [
	| operator |
	operator := (ASTCLiteral value: 1) + (ASTCLiteral value: 2).

	operator debugASTCStructure.
	self assert: operator isAdditionOperator.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: '1 + 2'.
]

{ #category : #tests }
FAPrettyPrintTest >> testReturnNil [
	| return |
	return := ASTCReturn new
		expression: nil;
		yourself.

	return debugASTCStructure.
	self assert: return isReturn.
	self assert: (return prettyPrintUsing: FAPrettyPrint new) equals: 'return ;'.
]

{ #category : #'tests-parenthesis' }
FAPrettyPrintTest >> testStructStaticAccessInIndexAtInAssign [
	| operator |
	"comes from a real bug, hence the specificity of the test."
	operator := (('self' asCIdentifierNode structStaticAccess: 'temps' asCIdentifierNode) indexAt: 'i'asCIdentifierNode) assign: 'nilObj' asCIdentifierNode.
	
	operator debugASTCStructure.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 'self . temps[i] = nilObj'.
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

{ #category : #tests }
FAPrettyPrintTest >> testVisitCastOperator [
	| structure |
	structure := ASTCCastOperator new 
		type: 'struct b' asCTypeNode;
		operand: #a asCIdentifierNode;
		yourself.
	
	structure debugASTCStructure.
	self assert: structure isCastOperator.
	self assert: (structure prettyPrintUsing: FAPrettyPrint new) equals: '(struct b) a'.
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
FAPrettyPrintTest >> testVisitPreProcessorDefine [
	| defineMacro |
	defineMacro := ASTCPreprocessorDefine new
		name: (ASTCIdentifier new id: #DRUSS; yourself);
		value: (ASTCLiteral new value: 'awesome'; yourself);
		yourself.

	defineMacro debugASTCStructure.
	self assert: defineMacro isPreprocessorDefine.
	self assert: (defineMacro prettyPrintUsing: FAPrettyPrint new) equals: '#define DRUSS "awesome"'.
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
			type: #int asCTypeNode; 
			id: #druss asCIdentifierNode);
		yourself.
	
	operator debugASTCStructure.
	self assert: operator isStructureDefinition.
	self assert: (operator prettyPrintUsing: FAPrettyPrint new) equals: 
'typedef struct heros {
 int druss;
} heros ;'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitSwitch [
	| switch |
	switch :=
		ASTCSwitch new 
			expression: (ASTCLiteral value: 0);
			cases:
			{ ASTCSwitchCase new
				expression: (ASTCLiteral value: 1);
				body: (ASTCBlock new addStatement: (ASTCLiteral value: 2) asStatement ; yourself);
				yourself };
			default: (ASTCBlock new addStatement: (ASTCLiteral value: 3) asStatement ; yourself);
			yourself.
			
	switch debugASTCStructure.
	self assert: switch isSwitch.
	self assert: (switch prettyPrintUsing: FAPrettyPrint new) equals: 
'switch ( 0 )
{
 case 1 :
  {
   2;
  }
 default: 
  {
   3;
  }
}'.
]

{ #category : #tests }
FAPrettyPrintTest >> testVisitSwitchCase [
	| switchCase |
	switchCase := ASTCSwitchCase new
		expression: (ASTCLiteral value: 0);
		body: (ASTCBlock new addStatement: (ASTCLiteral value: 1) asStatement ; yourself); 
		yourself.
		
	switchCase debugASTCStructure.
	self assert: switchCase isSwitchCase.
	self assert: (switchCase prettyPrintUsing: FAPrettyPrint new) equals: 
'case 0 :
 {
  1;
 }'.
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
