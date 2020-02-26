Class {
	#name : #MASlangInlinerTest,
	#superclass : #TestCase,
	#instVars : [
		'program',
		'inliner',
		'methodToInline'
	],
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #support }
MASlangInlinerTest >> methodInliningAMethodInliningAStatement [
	self methodWithSingleStatementToInline
]

{ #category : #support }
MASlangInlinerTest >> methodReturningInlinedSingleStatement [
	^ self methodWithSingleStatement
]

{ #category : #support }
MASlangInlinerTest >> methodWithATemp [
	| t |
	t
]

{ #category : #support }
MASlangInlinerTest >> methodWithATempInliningMethodWithSameTemp [
	| t |
	t := self methodWithATemp
]

{ #category : #support }
MASlangInlinerTest >> methodWithBlockParameter: aBlock [
	aBlock value
]

{ #category : #support }
MASlangInlinerTest >> methodWithBlockParameterToInline [
	self methodWithBlockParameter: [ 1 even ]
]

{ #category : #support }
MASlangInlinerTest >> methodWithCMacro [
	
	<cmacro>
	^ 17
]

{ #category : #support }
MASlangInlinerTest >> methodWithMacroToInline [
	
	^ self methodWithCMacro
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatement [
	1 even
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatementAndSingleTemporary [
	| t |
	1 even
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatementAndSingleTemporaryToInline [
	self methodWithSingleStatementAndSingleTemporary
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatementThatReturns [
	^ 1 even
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatementThatReturnsToInline [
	self methodWithSingleStatementThatReturns
]

{ #category : #support }
MASlangInlinerTest >> methodWithSingleStatementToInline [
	self methodWithSingleStatement
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatements [
	1 even.
	2 even
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsThatBothInlineSingleStatements [
	self methodWithSingleStatement.
	self methodWithSingleStatement
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsThatBothInlineTwoStatements [
	self methodWithTwoStatements.
	self methodWithTwoStatements
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsThatBothInlineTwoStatementsIntoAssignment [
	| t |
	t := self methodWithTwoStatements.
	t := self methodWithTwoStatements
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsThatReturns [
	1 even.
	^ 2 even
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsThatReturnsToInline [
	self methodWithTwoStatementsThatReturns
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsToInline [
	self methodWithTwoStatements
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsToInlineIntoAssignment [
	| t |
	t := self methodWithTwoStatements
]

{ #category : #support }
MASlangInlinerTest >> methodWithTwoStatementsToInlineIntoReturn [
	^ self methodWithTwoStatements
]

{ #category : #running }
MASlangInlinerTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	program := FAProgram new.
	inliner := MASlangCompleteInliner new
		translator: MASlangClassTranslator new.
]

{ #category : #'test-renaming' }
MASlangInlinerTest >> testInlineExistingTempNameShouldHaveDifferentNames [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithATemp) ast.
	initialMethod := (self class >> #methodWithATempInliningMethodWithSameTemp) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isAssignment.
	self assert: inlinedStatement variable name equals: #t.
	self assert: inlinedStatement value isTemporaryNode.
	self assert: inlinedStatement value name equals: #t1.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineMessageWithBlockParameter [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithBlockParameter:) ast. 
	initialMethod := (self class >> #methodWithBlockParameterToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver isBlock.
	self assert: inlinedStatement receiver equals: [ 1 even ] sourceNode.
	self assert: inlinedStatement selector equals: #value.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineMessageWithCMacroShouldNotInline [
	| resultingMethod initialMethod |
	program addMethod: (self class >> #methodWithCMacro) ast. 
	initialMethod := (self class >> #methodWithMacroToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self assert: initialMethod equals: resultingMethod.

]

{ #category : #tests }
MASlangInlinerTest >> testInlineSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatement) ast.
	initialMethod := (self class >> #methodWithSingleStatementToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineSingleStatementAndTemporary [
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
MASlangInlinerTest >> testInlineSingleStatementThatReturns [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatementThatReturns) ast.
	initialMethod := (self class >> #methodWithSingleStatementThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineTwoStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 2.
	inlinedStatement := resultingMethod statements.
	self assert: inlinedStatement first isMessage.
	self assert: inlinedStatement first receiver value equals: 1.
	self assert: inlinedStatement first selector equals: #even.
	
	self assert: inlinedStatement second isMessage.
	self assert: inlinedStatement second receiver value equals: 2.
	self assert: inlinedStatement second selector equals: #even.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineTwoStatementIntoAssignment [
	| resultingMethod initialMethod assignment block |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsToInlineIntoAssignment) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.

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
MASlangInlinerTest >> testInlineTwoStatementIntoReturn [
	| resultingMethod initialMethod block secondMessage firstMessage |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsToInlineIntoReturn) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.

	self assert: resultingMethod statements first isReturn.
	block := resultingMethod statements first value.
	self assert: block isBlock.
	self assert: block statements size equals: 2.
	
	firstMessage := block statements first.
	self assert: firstMessage isMessage.
	self assert: firstMessage receiver value equals: 1.
	self assert: firstMessage selector equals: #even.
	
	secondMessage := block statements second.
	self assert: secondMessage isMessage.
	self assert: secondMessage receiver value equals: 2.
	self assert: secondMessage selector equals: #even.
]

{ #category : #tests }
MASlangInlinerTest >> testInlineTwoStatementThatReturns [
	"same behavior as self class >> testInlineTwoStatement, because the return is discarded in the inlining"
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithTwoStatementsThatReturns) ast. 
	initialMethod := (self class >> #methodWithTwoStatementsThatReturnsToInline) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 2.
	inlinedStatement := resultingMethod statements.
	self assert: inlinedStatement first isMessage.
	self assert: inlinedStatement first receiver value equals: 1.
	self assert: inlinedStatement first selector equals: #even.
	
	self assert: inlinedStatement second isMessage.
	self assert: inlinedStatement second receiver value equals: 2.
	self assert: inlinedStatement second selector equals: #even.
]

{ #category : #'test-multiples' }
MASlangInlinerTest >> testMethodInliningMethodInliningAStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatementToInline) ast.
	program addMethod: (self class >> #methodWithSingleStatement) ast.
	initialMethod := (self class >> #methodInliningAMethodInliningAStatement) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even
]

{ #category : #'test-multiples' }
MASlangInlinerTest >> testMethodWithTwoStatementsThatBothInlineSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatement) ast.
	initialMethod := (self class >> #methodWithTwoStatementsThatBothInlineSingleStatements) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 2.
	inlinedStatement := resultingMethod statements first.
	
	self assert: inlinedStatement isMessage.
	self assert: inlinedStatement receiver value equals: 1.
	self assert: inlinedStatement selector equals: #even.
	
	self assert: resultingMethod statements first equals: resultingMethod statements second.
]

{ #category : #'test-multiples' }
MASlangInlinerTest >> testMethodWithTwoStatementsThatBothInlineTwoStatement [
	| resultingMethod firstInlinedStatement initialMethod secondInlinedStatement |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsThatBothInlineTwoStatements) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 4.
	
	firstInlinedStatement := resultingMethod statements first.
	self assert: firstInlinedStatement isMessage.
	self assert: firstInlinedStatement receiver value equals: 1.
	self assert: firstInlinedStatement selector equals: #even.
	
	secondInlinedStatement := resultingMethod statements second.
	self assert: secondInlinedStatement isMessage.
	self assert: secondInlinedStatement receiver value equals: 2.
	self assert: secondInlinedStatement selector equals: #even.
	
	self assert: firstInlinedStatement equals: resultingMethod statements third.
	self assert: secondInlinedStatement equals: resultingMethod statements fourth.
]

{ #category : #'test-multiples' }
MASlangInlinerTest >> testMethodWithTwoStatementsThatBothInlineTwoStatementsIntoAssignments [
	| resultingMethod firstInlinedStatement initialMethod assignment |
	program addMethod: (self class >> #methodWithTwoStatements) ast.
	initialMethod := (self class >> #methodWithTwoStatementsThatBothInlineTwoStatementsIntoAssignment) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 2.
	
	self assert: resultingMethod statements first isBlock.
	assignment := resultingMethod statements first statements second.
	self assert: assignment isAssignment.
	self assert: assignment value isMessage.
	self assert: assignment value receiver value equals: 2.
	self assert: assignment value selector equals: #even.
	
	self assert: resultingMethod statements second equals: resultingMethod statements second.
]

{ #category : #'test-renaming' }
MASlangInlinerTest >> testNewNamesShouldBeDeclared [
	| resultingMethod  initialMethod newTempNames |
	program addMethod: (self class >> #methodWithATemp) ast.
	initialMethod := (self class >> #methodWithATempInliningMethodWithSameTemp) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod temporaries size equals: 2.
	
	newTempNames := resultingMethod temporaries collect: [ :aTemp| aTemp name ].
	self assert: (newTempNames includes: #t).
	self assert: (newTempNames includes: #t1).
]

{ #category : #'test-renaming' }
MASlangInlinerTest >> testNewNamesShouldHaveDeclarationAnnotation [
	| resultingMethod  initialMethod declarationAnnotation declarationVisitor methodThatWillBeInlined |
	methodThatWillBeInlined := (self class >> #methodWithATemp) ast.
	program addMethod: methodThatWillBeInlined.
	initialMethod := (self class >> #methodWithATempInliningMethodWithSameTemp) ast.
	methodToInline := initialMethod copy.
	
	"we check the merge of the declarations, therefore we need to make declare them"
	declarationVisitor := MASlangDeclarationAnnotator new.
	methodThatWillBeInlined acceptVisitor: declarationVisitor.
	methodToInline acceptVisitor: declarationVisitor.
	
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	"main declaration, in smalltalk code"
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod temporaries size equals: 2.
	
	"annotation for C declaration"
	self assert: (resultingMethod body hasProperty: FAVariableDeclarationAnnotator property).
	declarationAnnotation := resultingMethod body propertyAt: FAVariableDeclarationAnnotator property.
	self assert: declarationAnnotation size = 2.
	declarationAnnotation do:[ :aTempNode |
		self assert: (#(t t1) includes: aTempNode name).
		]
]

{ #category : #tests }
MASlangInlinerTest >> testReturningInlinedSingleStatement [
	| resultingMethod inlinedStatement initialMethod |
	program addMethod: (self class >> #methodWithSingleStatement) ast. 
	initialMethod := (self class >> #methodReturningInlinedSingleStatement) ast.
	methodToInline := initialMethod copy.
	resultingMethod := inliner applyOnMethod: methodToInline ofProgram: program.
	
	
	self deny: initialMethod equals: resultingMethod.
	self assert: resultingMethod statements size equals: 1.
	inlinedStatement := resultingMethod statements first.
	self assert: inlinedStatement isReturn.
	self assert: inlinedStatement value isMessage.
	self assert: inlinedStatement value receiver value equals: 1.
	self assert: inlinedStatement value selector equals: #even.
]

{ #category : #'test-renaming' }
MASlangInlinerTest >> testTempNameAppearingTwiceShouldBeRenamed [
	| tempNamesToInline tempNamesInliningIn res |
	tempNamesToInline := { #a }.
	tempNamesInliningIn := { #a }.
	
	res := inliner newNamesForIntersectionOf: tempNamesToInline and: tempNamesInliningIn.
	self assert: res size equals: 1.
	self assert: (res at: #a) equals: #a1.
]

{ #category : #'test-renaming' }
MASlangInlinerTest >> testTempNameDifferentShouldNotChangeNames [
	| tempNamesToInline tempNamesInliningIn res |
	tempNamesToInline := { #a }.
	tempNamesInliningIn := { #b }.
	
	res := inliner newNamesForIntersectionOf: tempNamesToInline and: tempNamesInliningIn.
	self assert: res size equals: 0.
]
