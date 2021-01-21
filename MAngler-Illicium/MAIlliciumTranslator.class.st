Class {
	#name : #MAIlliciumTranslator,
	#superclass : #FATranslator,
	#instVars : [
		'replacementClasses'
	],
	#classVars : [
		'VMProgram'
	],
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> classTranslatorClass [
	^ IlliciumClassTranslator 
]

{ #category : #printing }
MAIlliciumTranslator class >> compactResults: aDictionary [
	| newResults |
	newResults := Dictionary new.
	aDictionary keysAndValuesDo: [ :aClass :someResults | | resultDict |
		resultDict := Dictionary new.
		someResults do: [ :aTestResult | | col |
			col := resultDict at: aTestResult key ifAbsentPut: [ OrderedCollection new ].
			col add: aTestResult value
			].
		newResults at: aClass put: resultDict.
		].
	^ newResults
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> compileVMTests [
	| res line |
	OSSUnixSubprocess new
		shellCommand: 'cd ~/ovm/testCompilation && make';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			res := outString
		].
	line := res lines last.

	(line last: 4) = 'done' ifTrue: [ ^ self runnedInC ].
	(line last: 6) = 'failed' ifTrue: [ ^ self failedInC: res ].

	self halt.

	^ res
]

{ #category : #report }
MAIlliciumTranslator class >> failedInC: aString [
	aString lines third = 'something' ifFalse: [ ^ 'C compilation error' -> aString ].

	self halt.
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> generateAllTestsFor: aClass [
	| testMethods timeOutTime log |
	testMethods := aClass methodDict select: [ :aMethod | aMethod ast isTest ].
	
	timeOutTime := Duration seconds: 10.
	log := Dictionary new.

	UIManager default
		displayProgress: 'Running tests for ' , aClass name
		from: 0
		to: testMethods size
		during:
			[:bar |
			 testMethods doWithIndex:
				[ :aMethod :i |
				bar value: i.
		"display ui, but don't want to reindent the code..."

		[
			[ log add: (aMethod selector -> aMethod runInC) ] 
				valueWithin: timeOutTime onTimeout: [ TimedOut signal ]
		] on: Exception do:[ :e |
		e class = Notification ifTrue:[ e resume ].
			"Not great but the initial selector gets lost at some point... Whatever for now"
		e class = Halt ifTrue: [ e pass ].
		e class = TimedOut 
			ifTrue: [ log add: (aMethod selector -> ('TimedOut' -> aMethod selector))]
			ifFalse: [ log add: (aMethod selector -> ('Others' -> (aMethod selector -> e description))).

				]]]].
	
	^ aClass -> log

]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> generateMainForTestClasses: classes [
	FAFilePrinter new
		directory: './generated/tests/';
		fileName: 'AllTests.c';
		printStringInFile: (self mainCCodeForTestClasses: classes)
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> mainCCodeForTestClasses: classes [
	self flag: #CuTest.
	^ String streamContents: [ :s |
		s << '#include <stdio.h>' ; cr.
		s << '#include "CuTest.h"' ; cr.
	
		classes do: [ :aClass |
				s << 'CuSuite* ' << aClass name << 'GetSuite();' ; cr
			].
	
		s cr cr.
	
		s << 'void RunAllTests(void)
{
	CuString* output = CuStringNew();
	CuSuite* suite = CuSuiteNew();'.
	
		s cr.
		"CuSuiteAddSuite(suite, CuGetSuite());
		CuSuiteAddSuite(suite, CuStringGetSuite());"
		classes do: [ :aClass |
			s << 'CuSuiteAddSuite(suite,' << aClass name << 'GetSuite());' ; cr
			].


		s << 'CuSuiteRun(suite);
	CuSuiteSummary(suite, output);
	CuSuiteDetails(suite, output);
	printf("%s\n", output->buffer);
}

int main(void)
{
	RunAllTests();
}'
	]
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> moveFilesintoVMDirectory [
	OSSUnixSubprocess new
		shellCommand: 'cd ~/ovm && ./movestuff.sh ./testCompilation';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			^ outString
		].
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> prettyPrinterClass [
	^ FAPrettyPrint
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> programClass [
	^ MAProgram
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> resetGeneratedTestDirectories [
	OSSUnixSubprocess new
		shellCommand: 'rm -rf generated/tests/*';
		redirectStdout;
		runAndWaitOnExitDo: [ :command :outString |
			^ outString
		].
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> resetVMProgram [
	VMProgram := nil.
]

{ #category : #report }
MAIlliciumTranslator class >> runnedInC [
	| res |
	res := (FileSystem / 'home'/ 'ariale' / 'ovm' / 'testCompilation' / 'log.txt') contents.
	res lines last = 'Test passed' ifTrue: [ ^ 'test passed' -> res lines first ].
	
	self halt.
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> translateTestClass: aClass [
	^ self new translateTestClass: aClass
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> translateTestMethod: aMethod [
	^ self new translateTestMethod: aMethod
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> tryAllTests [
	| testClasses results |
	testClasses := VMSpurInitializedOldSpaceTest subclasses .
	results := Dictionary new.
	
	UIManager default
		displayProgress: 'Running tests in C'
		from: 0
		to: testClasses size
		during:
			[:bar |
			 testClasses doWithIndex:
				[ :aClass :i |
				bar value: i.
				results add: (self generateAllTestsFor: aClass)
				]].
	
	self halt.
	^ self compactResults: results.
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> typeAnnotatorClass [
	^ IlliciumPhineasTypeAnnotator 
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> vmProgram [

	^ VMProgram ifNil: [ VMProgram := MASlangTranslator new prepareProgram; program ]
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateClass: aClass [ 
	| translation |
	translation := self translateClass: aClass.
	self printCompilationUnitInSeparateFiles: translation in: './generated/classes/' withFileName: aClass name.
	^ translation
]

{ #category : #'generation-support' }
MAIlliciumTranslator >> generateFileForTest: aFunction fromClass: aClass [
	| testMain mainFunction |
	testMain := ASTCCompilationUnit new.
	testMain add: aFunction.
	testMain addInclude: ('"' , aClass name , '.h"') asCIncludeNode.
	mainFunction := self mainFunctionFor: aFunction selector forClass: aClass.
	testMain add: mainFunction.
	^ self printCompilationUnitInSingleFile: testMain
		in: './generated/tests/'
		withFileName: aClass name , '__' , aFunction selector
]

{ #category : #'generation-support' }
MAIlliciumTranslator >> generateMakefileForTests: testMethods forClass: aClass [
	| makefile |
	makefile := FAMakefileBuilder new
		testClassFile: aClass name;
		tests: testMethods;
		buildMakefile.
	
	FAFilePrinter new
		directory: 'generated/tests';
		fileName: 'Makefile';
		printStringInFile: makefile contents
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateTestClass: aClass [
	| translation |
	translation := self translateTestClass: aClass.

	self generateTestCompilationUnit: translation forClass: aClass.
	
	^ translation
]

{ #category : #'generation-support' }
MAIlliciumTranslator >> generateTestCompilationUnit: aCompilationUnit forClass: aClass [
	"We generate a file per test, and a common file for the methods used in those tests."
	| testMethods |	
	testMethods := aCompilationUnit extractTestFunctions.
	testMethods do: [ :aFunction | self generateFileForTest: aFunction fromClass: aClass ].
	
	self generateMakefileForTests: testMethods forClass: aClass.

	self printCompilationUnitInSeparateFiles: aCompilationUnit 
			in: './generated/tests/' 
			withFileName: aClass name.
	self generateTestSupport.
	^ aCompilationUnit
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateTestMethod: aMethod [
	| translation |
	translation := self translateTestMethod: aMethod.

	self generateTestCompilationUnit: translation forClass: aMethod methodClass.
	^ translation
]

{ #category : #testTranslation }
MAIlliciumTranslator >> generateTestSupport [
	self generateTestSupportHeader.
	self generateTestSupportImplementation.
]

{ #category : #testTranslation }
MAIlliciumTranslator >> generateTestSupportHeader [
	"Currently hardCoded for quick feedback"
	self flag: #hardCode.
	self printRawFile: '
#include <stdio.h>
#include <stdlib.h>

void testPassed();
void testFailed(int line);
void cAssert(int line, int condition);'
 in: 'generated/tests/' withName: 'cTestCase.h'.
]

{ #category : #testTranslation }
MAIlliciumTranslator >> generateTestSupportImplementation [
	"Currently hardCoded for quick feedback"
	self flag: #hardCode.
	self printRawFile: '
#include <stdio.h>
#include <stdlib.h>

void testPassed(){
  printf("Test passed\n");
  exit(EXIT_SUCCESS);
}

void testFailed(int line){
  printf("Assertion line: %d Test failed\n", line);
  exit(EXIT_FAILURE);
}


void cAssert(int line, int condition)
{
  if (condition) return;
  testFailed(line);
}'
 in: 'generated/tests/' withName: 'cTestCase.c'.
]

{ #category : #initialization }
MAIlliciumTranslator >> getReplacementType: aPharoType [
	| type |
	self flag: #hack. "*2 allows to continue with initial mechanisms, we remove the singleType & add the type to the translator"
	aPharoType type class = CType ifTrue: [ ^ MASlangStructsReceiver new type: aPharoType type; yourself ].
	
	type := aPharoType performReplacementUsing: replacementClasses.
	
	(type isSingleType and: [ type type = MASlangReceiver ]) ifTrue:[ type := type type new type: (CType new pharoType: aPharoType type); yourself ].
	^ type
]

{ #category : #accessing }
MAIlliciumTranslator >> inferer [
	^ inferer
]

{ #category : #initialization }
MAIlliciumTranslator >> initialize [
	super initialize.
	inferer := PhineasInferer new explicitTypeHeuristic: PISlangTypesHeuristic new; yourself. 
	"basic replacement classes"
	 " float and string are used... Not well !"
	replacementClasses := Dictionary new
		at: #Object put: IlliciumObject ;
		at: #TestCase put: IlliciumTestCase;
		at: #UndefinedObject put: IlliciumUndefinedObject ;
		at: #SmallInteger put: IlliciumSmallInteger ;
		at: #Boolean put: IlliciumBoolean ;
		at: #Character put: IlliciumCharacter ;
		at: #String put: IlliciumString ;
		at: #ByteString put: IlliciumString ;
		at: #ByteSymbol put: IlliciumString ;
		at: #Float put: IlliciumFloat ; 
		at: #SmallFloat64 put: IlliciumFloat ; 
		at: #BoxedFloat64 put: IlliciumFloat ; 
		at: #Array put: IlliciumArray ;
		at: #OrderedCollection put: IlliciumOrderedCollection ;
		yourself
]

{ #category : #testTranslation }
MAIlliciumTranslator >> mainFunctionFor: aSelector forClass: aClass [
	| mainFunction body |

	mainFunction := ASTCFunctionDefinition new
		declaration:
			(ASTCFunctionDeclaration new
				qualifiers: OrderedCollection new;
				type: #int asCTypeNode ;
				id: #main asCIdentifierNode;
				yourself);
			body: ASTCBlock new;
		yourself.

	body := mainFunction body.
	
	body add: (ASTCVariableDeclaration new id: #self asCIdentifierNode ; type: aClass name asCTypeNode ; yourself) asStatement.
	body add: (ASTCFunctionCall new id: #setUp asCIdentifierNode ; arguments: { #self asCIdentifierNode asAddressOf } ; yourself) asStatement.
	body add: (ASTCFunctionCall new id: aSelector asCIdentifierNode ; arguments: { #self asCIdentifierNode asAddressOf } ; yourself) asStatement.
	body add: (ASTCFunctionCall new id: #tearDown asCIdentifierNode ; arguments: { #self asCIdentifierNode asAddressOf } ; yourself) asStatement.
	body add: (ASTCFunctionCall new id: #testPassed asCIdentifierNode ; yourself) asStatement.

	^ mainFunction
]

{ #category : #visiting }
MAIlliciumTranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { MAIlliciumMethodCleaner new } 
	, super preTranslationAnnotators
	, { IlliciumDeclarationAnnotator new }
]

{ #category : #accessing }
MAIlliciumTranslator >> preTranslationTransformations [
	^ self shouldBeImplemented
]

{ #category : #visiting }
MAIlliciumTranslator >> prepareProgram [
	program prepareWithInferer: inferer inTranslator: self
]

{ #category : #printing }
MAIlliciumTranslator >> printRawFile: rawCCode in: aDirectory withName: aFile [ 
	| cu |
	cu := ASTCCompilationUnit new.
	cu preamble: (ASTCRawCCode new cCode: rawCCode; yourself).
	self printCompilationUnit: cu in: aDirectory withName: aFile
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]

{ #category : #'generation-support' }
MAIlliciumTranslator >> runTestInC: aTestMethodAST [
	self generateTestMethod: aTestMethodAST.
	

	self halt.
]

{ #category : #testTranslation }
MAIlliciumTranslator >> testTranslationPreludeFor: aClass [
	self vmDependentCode.
	inferer inferAST: (aClass lookupSelector: #setUp) ast.

]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateClass: aClass [
	| cu |
	self addClass: aClass.
	replacementClasses at: aClass name put: IlliciumUserClass.
	cu := self translateProgram.
	^ cu
]

{ #category : #'translation-support' }
MAIlliciumTranslator >> translateProgram [
	| cu |
	self prepareProgram.
	cu := ASTCCompilationUnit new.
	cu add: self translateProgramFunctions.
	cu add: self translateProgramState.	
	^ cu
]

{ #category : #'translation-support' }
MAIlliciumTranslator >> translateProgramFunctions [
	| cu |
		
	cu := ASTCCompilationUnit new.
	program methods value
		collect: [ :aMethod | classTranslator methodTranslator translateMethod: aMethod ] into: cu.
	program includes collect: [ :anInclude | ASTCPreprocessorInclude new name: anInclude; yourself ] into: cu.
	
	^ cu
]

{ #category : #'translation-support' }
MAIlliciumTranslator >> translateProgramState [
	^ program classes collect: [ :aClass | classTranslator translateStateOf: aClass ] 
		into: ASTCCompilationUnit new.
]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateTestClass: aClass [ 
	| cu |
	self testTranslationPreludeFor: aClass.
	replacementClasses at: aClass name put: IlliciumUserClass.	
	cu := self translateClass: aClass.
	^ cu
]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateTestMethod: aMethodNode [ 
	self testTranslationPreludeFor: aMethodNode methodClass.
	replacementClasses at: aMethodNode methodClass put: IlliciumUserClass.	
	program addMethodAndClass: aMethodNode copy.
	program addTestClassSetUpAndTeardownFor: aMethodNode methodClass.
	
	^ self translateProgram
]

{ #category : #dependencies }
MAIlliciumTranslator >> vmDependentCode [
	| vmProgram |
	
	vmProgram := self class vmProgram.
	vmProgram classesToPrepareSelectorsFor do: [ :vmClass | 
		replacementClasses at: vmClass name put: MASlangReceiver ].
	vmProgram structClasses , {VMStructType} do: [ :vmStruct | 
		replacementClasses at: vmStruct name put: MASlangStructsReceiver ].
	inferer addDependency: vmProgram.
	program addDependency: vmProgram.
	program addInclude: #'"theFullInterpreter.h"'
]
