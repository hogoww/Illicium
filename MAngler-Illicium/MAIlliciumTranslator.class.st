Class {
	#name : #MAIlliciumTranslator,
	#superclass : #FATranslator,
	#instVars : [
		'replacementClasses'
	],
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> classTranslatorClass [
	^ IlliciumClassTranslator 
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
MAIlliciumTranslator class >> prettyPrinterClass [
	^ FAPrettyPrint
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> programClass [
	^ MAProgram
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> translateTestClass: aClass [
	^ self new translateTestClass: aClass
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> translateTestMethod: aMethod [
	^ self new translateTestMethod: aMethod
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> typeAnnotatorClass [
	^ IlliciumPhineasTypeAnnotator 
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateClass: aClass [ 
	| translation |
	translation := self translateClass: aClass.
	self printCompilationUnitInSeparateFiles: translation in: './generated/classes/' withFileName: aClass name.
	^ translation
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateTestClass: aClass [ 
	| translation testMethods supportName |
	supportName := aClass name, #Support.
	
	translation := self translateTestClass: aClass.
	testMethods := translation definitions select: [: aFunction | aFunction isTest ].
	translation definitions removeAllSuchThat: [ :aFunction | aFunction isTest ].
	
	testMethods do: [ :aFunction | | testMain mainFunction |
		testMain := ASTCCompilationUnit new.
		testMain add: aFunction.
		testMain addInclude: ('"' , supportName ,'.h"') asCIncludeNode.
		
		mainFunction := self mainFunctionFor: aFunction selector forClass: aClass.
		testMain add: mainFunction.
		self printCompilationUnitInSingleFile: testMain in: './generated/tests/' withFileName: aClass name , '__' , aFunction selector.
		].
	
	self printCompilationUnitInSeparateFiles: translation in: './generated/tests/' withFileName: supportName.
	
	self generateTestSupport.

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
void assert(int line, int condition);'
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
  printf("Test succefully passed\n");
  exit(EXIT_SUCCESS);
}

void testFailed(int line){
  printf("Assertion line: %d Test failed\n", line);
  exit(EXIT_FAILURE);
}


void assert(int line, int condition)
{
  if (condition) return;
  testFailed();
}'
 in: 'generated/tests/' withName: 'cTestCase.c'.
]

{ #category : #initialization }
MAIlliciumTranslator >> getReplacementType: aPharoType [
	| type |
	type := aPharoType performReplacementUsing: replacementClasses.
	self flag:#hack. "allows to continue with initial mechanisms, we remove the singleType & add the type to the translator"
	(type isSingleType and: [ type type includesBehavior: MAAbstractSlangReceiver ]) ifTrue:[ type := type type new type: (CType new pharoType: aPharoType type) ].
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

{ #category : #'generation-api' }
MAIlliciumTranslator >> printCompilationUnit: aCompilationUnit in: aDirectory withName: aFileName [
	FAFilePrinter new
		directory: aDirectory;
		fileName: aFileName;
		compilationUnit: aCompilationUnit;
		prettyPrinter: self class prettyPrinterClass new;
		generateFiles
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> printCompilationUnitInSeparateFiles: aCompilationUnit in: aDirectory withFileName: aClassName [
	| headerCompilationUnit |
	headerCompilationUnit := aCompilationUnit removeHeaderAndPutItInNewCompilationUnit.
	aCompilationUnit add: (ASTCPreprocessorInclude new name:  '"',aClassName , '.h"').
	
	self printCompilationUnit: headerCompilationUnit in: aDirectory withName: aClassName , '.h'.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: aClassName , '.c'
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> printCompilationUnitInSingleFile: aCompilationUnit in: aDirectory withFileName: fileName [
	aCompilationUnit addDeclarationsOfDefinitions.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: fileName , '.c'
]

{ #category : #'generation-api' }
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
	self addCTypesFor: aClass.
	cu := self translateProgram.
	cu add: (classTranslator translateStateOf: aClass).
	^ cu
]

{ #category : #visiting }
MAIlliciumTranslator >> translateProgram [
	| cu |
	self prepareProgram.
	
	cu := ASTCCompilationUnit new.
	program methods value
		collect: [ :aMethod | classTranslator methodTranslator translateMethod: aMethod ] into: cu.
	program includes collect: [ :anInclude | ASTCPreprocessorInclude new name: anInclude; yourself ] into: cu.
	
	^ cu
]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateTestClass: aClass [ 
	| cu |
	self testTranslationPreludeFor: aClass.
	cu := self translateClass: aClass.
	replacementClasses at: aClass name put: IlliciumUserClass.	
	^ cu
]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateTestMethod: aMethodNode [ 
	self testTranslationPreludeFor: aMethodNode methodClass.
	self addMethod: aMethodNode fromClass: aMethodNode methodClass.
	^ self translateMethod: aMethodNode selector fromClass: aMethodNode methodClass.
]

{ #category : #dependencies }
MAIlliciumTranslator >> vmDependentCode [
	| vmProgram |
	vmProgram := MASlangTranslator new prepareProgram; program.
	vmProgram classesToPrepareSelectorsFor do: [ :vmClass | replacementClasses at: vmClass name put: MASlangReceiver ].
	inferer addDependency: vmProgram.
	program addDependency: vmProgram.
	program addInclude: #'"theFullInterpreter.h"'
]
