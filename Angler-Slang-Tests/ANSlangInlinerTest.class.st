Class {
	#name : #ANSlangInlinerTest,
	#superclass : #TestCase,
	#instVars : [
		'program',
		'inliner',
		'methodToInline'
	],
	#category : #'Angler-Slang-Tests'
}

{ #category : #support }
ANSlangInlinerTest >> methodReturningInlinedSingleStatement [
	^ self methodWithSingleStatement
]

{ #category : #'as yet unclassified' }
ANSlangInlinerTest >> methodWithATemp [
	| t |
	t
]

{ #category : #support }
ANSlangInlinerTest >> methodWithATempInliningMethodWithSameTemp [
	| t |
	t := self methodWithATemp
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
ANSlangInlinerTest >> methodWithCMacro [
	
	<cmacro>
	^ 17
]

{ #category : #tests }
ANSlangInlinerTest >> methodWithMacroToInline [
	
	^ self methodWithCMacro
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

{ #category : #support }
ANSlangInlinerTest >> methodWithTwoStatementsToInlineIntoAssignment [
	| t |
	t := self methodWithTwoStatements
]

{ #category : #running }
ANSlangInlinerTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	program := ANProgram new.
	inliner := ANSlangInliner new
		translator: ANSlangClassTranslator new.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineExistingTempNameShouldHaveDifferentNames [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithATemp) ast.
	initialMethod := (self class >> #methodWithATempInliningMethodWithSameTemp) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isAssignment.
	self assert: inlinedStatement variable name equals: #t.
	self assert: inlinedStatement value isTemp.
	self assert: inlinedStatement value name equals: #t1.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineMessageWithBlockParameter [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithBlockParameter:) ast. 
	initialMethod := (self class >> #methodWithBlockParameterToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver isBlock.
	self assert: inlinedStatement receiver equals: [ 1 even ] sourceNode.
	self assert: inlinedStatement selector equals: #value.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineMessageWithCMacroShouldNotInline [
	| resultingMethod initialMethod |
	program addMethod: (self class >> #methodWithCMacro) ast. 
	initialMethod := (self class >> #methodWithMacroToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self assert: initialMethod equals: resultingMethod.

]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatement) ast.
	initialMethod := (self class >> #methodWithSingleStatementToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatementAndTemporary [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatementAndSingleTemporary) ast.
	initialMethod := (self class >> #methodWithSingleStatementAndSingleTemporaryToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod temporaries size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: resultingMethod temporaries first name equals: #t.
	
	self assert: methodToInline statements size equals: 1.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
	
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineSingleStatementThatReturns [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatementThatReturns) ast.
	initialMethod := (self class >> #methodWithSingleStatementThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineTwoStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 2.
	inlinedStatement := resultingMethod statements.
	self assert: inlinedStatement first isMessage.
	self assert: inlinedStatement first receiver value equals: 1.
	self assert: inlinedStatement first selector equals: #even.
	
	self assert: inlinedStatement second isMessage.
	self assert: inlinedStatement second receiver value equals: 2.
	self assert: inlinedStatement second selector equals: #even.
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineTwoStatementIntoAssignment [
	| resultingMethod initialMethod assignment block |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsToInlineIntoAssignment) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.

	block := resultingMethod statements first.
	self assert: block isBlock.
	self assert: block statements size equals: 2.
	self assert: block statements first isMessage.
	self assert: block statements first receiver value equals: 1.
	self assert: block statements first selector equals: #even.
	
	assignment := block statements second.
	self assert: assignment isAssignment.
	self assert: assignment variable name equals: #t.
	self assert: assignment value isMessage.
	self assert: assignment value receiver value equals: 2.
	self assert: assignment value selector equals: #even
]

{ #category : #tests }
ANSlangInlinerTest >> testInlineTwoStatementThatReturns [
	"same behavior as self class >> testInlineTwoStatement, because the return is discarded in the inlining"
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithTwoStatementsThatReturns) ast. 
	initialMethod := (self class >> #methodWithTwoStatementsThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 2.
	inlinedStatement := resultingMethod statements.
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
	program addMethod: (self class >> #methodWithSingleStatement) ast. 
	initialMethod := (self class >> #methodReturningInlinedSingleStatement) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: methodToInline statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isReturn.
	self assert: inlinedStatement value isMessage.
	self assert: inlinedStatement value receiver value equals: 1.
	self assert: inlinedStatement value selector equals: #even.
]

{ #category : #'test-renaming' }
ANSlangInlinerTest >> testTempNameAppearingTwiceShouldBeRenamed [
	| tempNamesToInline tempNamesInliningIn res |
	tempNamesToInline := { #a }.
	tempNamesInliningIn := { #a }.
	
	res := inliner temporariesFrom: tempNamesToInline in: tempNamesInliningIn.
	self assert: res size equals: 1.
	self assert: (res at: #a) equals: #a1
]

{ #category : #'test-renaming' }
ANSlangInlinerTest >> testTempNameDifferentShouldNotChangeNames [
	| tempNamesToInline tempNamesInliningIn res |
	tempNamesToInline := { #a }.
	tempNamesInliningIn := { #b }.
	
	res := inliner temporariesFrom: tempNamesToInline in: tempNamesInliningIn.
	self assert: res size equals: 0.
]
