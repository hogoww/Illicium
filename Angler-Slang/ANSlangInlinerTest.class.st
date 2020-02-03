Class {
	#name : #ANSlangInlinerTest,
	#superclass : #TestCase,
	#instVars : [
		'program',
		'inliner',
		'methodToInline'
	],
	#category : #'Angler-Slang'
}

{ #category : #support }
ANSlangInlinerTest >> methodReturningInlinedSingleStatement [
	^ self methodWithSingleStatement
]

{ #category : #support }
ANSlangInlinerTest >> methodWithBlockParameter: aBlock [
	aBlock value
]

{ #category : #support }
ANSlangInlinerTest >> methodWithBlockParameterToInline [
	self methodWithBlockParameter: [ 1 even ]
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatement [
	1 even
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatementAndSingleTemporary [
	| t |
	1 even
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatementAndSingleTemporaryToInline [
	self methodWithSingleStatementAndSingleTemporary
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatementThatReturns [
	^ 1 even
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatementThatReturnsToInline [
	self methodWithSingleStatementThatReturns
]

{ #category : #support }
ANSlangInlinerTest >> methodWithSingleStatementToInline [
	self methodWithSingleStatement
]

{ #category : #support }
ANSlangInlinerTest >> methodWithTwoStatements [
	1 even.
	2 even
]

{ #category : #support }
ANSlangInlinerTest >> methodWithTwoStatementsThatReturns [
	1 even.
	^ 2 even
]

{ #category : #support }
ANSlangInlinerTest >> methodWithTwoStatementsThatReturnsToInline [
	self methodWithTwoStatementsThatReturns
]

{ #category : #support }
ANSlangInlinerTest >> methodWithTwoStatementsToInline [
	self methodWithTwoStatements
]

{ #category : #running }
ANSlangInlinerTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	program := ANProgram new.
	inliner := ANSlangInliner new.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineMessageWithBlockParameter [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithBlockParameter:. 
	initialMethod := (self class >> #methodWithBlockParameterToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver isBlock.
	self assert: inlinedStatement receiver equals: [ 1 even ] sourceNode.
	self assert: inlinedStatement selector equals: #value.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithSingleStatement. 
	initialMethod := (self class >> #methodWithSingleStatementToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatementAndTemporary [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithSingleStatementAndSingleTemporary. 
	initialMethod := (self class >> #methodWithSingleStatementAndSingleTemporaryToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements first.
	self assert: resultingMethod temporaries size equals: 1.
	self assert: resultingMethod temporaries first name equals: #t.
	
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
	
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatementThatReturns [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithSingleStatementThatReturns.
	initialMethod := (self class >> #methodWithSingleStatementThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineTwoStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithTwoStatements. 
	initialMethod := (self class >> #methodWithTwoStatementsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements.
	self assert: methodToInline statements size equals: 2.
	self assert: inlinedStatement first isMessage.
	self assert: inlinedStatement first receiver value equals: 1.
	self assert: inlinedStatement first selector equals: #even.
	
	self assert: inlinedStatement second isMessage.
	self assert: inlinedStatement second receiver value equals: 2.
	self assert: inlinedStatement second selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineTwoStatementThatReturns [
	"same behavior as self class >> testInlineTwoStatement, because the return is discarded in the inlining"
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithTwoStatementsThatReturns. 
	initialMethod := (self class >> #methodWithTwoStatementsThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements.
	self assert: methodToInline statements size equals: 2.
	self assert: inlinedStatement first isMessage.
	self assert: inlinedStatement first receiver value equals: 1.
	self assert: inlinedStatement first selector equals: #even.
	
	self assert: inlinedStatement second isMessage.
	self assert: inlinedStatement second receiver value equals: 2.
	self assert: inlinedStatement second selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testReturningInlinedSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: self class >> #methodWithSingleStatement. 
	initialMethod := (self class >> #methodReturningInlinedSingleStatement) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	inlinedStatement := resultingMethod statements first.
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isReturn.
	self assert: inlinedStatement value isMessage.
	self assert: inlinedStatement value receiver value equals: 1.
	self assert: inlinedStatement value selector equals: #even.
]
