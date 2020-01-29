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

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleReturnStatement [
	^ 1 even
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleReturnStatementToInline [
	self methodWithSingleReturnStatement
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatement [
	1 even
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatementAndSingleTemporary [
	| t |
	1 even
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatementAndSingleTemporaryToInline [
	self methodWithSingleStatementAndSingleTemporary
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithSingleStatementToInline [
	self methodWithSingleStatement
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithTwoStatements [
	1 even.
	2 even
]

{ #category : #tests }
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
	program addMethod: self class >> #methodWithSingleReturnStatement.
	initialMethod := (self class >> #methodWithSingleReturnStatementToInline) ast.
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
