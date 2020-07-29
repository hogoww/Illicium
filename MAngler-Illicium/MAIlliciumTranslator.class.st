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
	FANewFilePrinter new
		directory: './generated/tests/';
		fileName: 'AllTests.c';
		printStringInFile: (self mainCCodeForTestClasses: classes)
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> generateTestClass: aClass [ 
	| translation |
	translation := self translateTestClass: aClass.
	FANewFilePrinter new
		directory: './generated/tests/';
		fileName: aClass name , '.c';
		compilationUnit: translation;
		prettyPrinter: self prettyPrinterClass new;
		printInFile.
	self generateMainForTestClasses: { aClass }.
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
	^ FAProgram
]

{ #category : #'translation-api' }
MAIlliciumTranslator class >> translateTestClass: aClass [
	^ self new translateTestClass: aClass
]

{ #category : #initialization }
MAIlliciumTranslator >> getReplacementType: aPharoType [
	^ aPharoType performReplacementUsing: replacementClasses
]

{ #category : #initialization }
MAIlliciumTranslator >> initialize [
	super initialize.
	inferer := PhineasInferer new explicitTypeHeuristic: PISlangTypesHeuristic; yourself. 
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
		yourself
]

{ #category : #visiting }
MAIlliciumTranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { 
		IlliciumDeclarationAnnotator new. 
		IlliciumPhineasTypeAnnotator new inferer: inferer ; yourself "always take the latest inferer"
		}
]

{ #category : #accessing }
MAIlliciumTranslator >> preTranslationTransformations [
	^ self shouldBeImplemented
]

{ #category : #visiting }
MAIlliciumTranslator >> prepareProgram [
	program methods do: [ :aMethod | inferer infer: aMethod ].
	program methods do:[ :aMethod | self annotateMethodAST: aMethod ].

]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses [
	^ replacementClasses
]

{ #category : #accessors }
MAIlliciumTranslator >> replacementClasses: aDictionnary [
	replacementClasses := aDictionnary
]

{ #category : #'translation-api' }
MAIlliciumTranslator >> translateClass: aClass [
	self addClass: aClass.
	^ self translateProgram
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
	| cu suiteDeclarationFunction body |
	cu := self translateClass: aClass.
	
	suiteDeclarationFunction := ASTCFunctionDefinition new 
		body: ASTCBlock new ;
		yourself.
	suiteDeclarationFunction 
		declaration: (ASTCFunctionDeclaration new 
			type: #'CuSuite*' asCTypeNode;
			id: (aClass name , 'GetSuite') asCIdentifierNode;
			qualifiers: {} asOrderedCollection;
			yourself).

	body := suiteDeclarationFunction body.
	
	(aClass allSelectorsBelow: TestCase) do: [ :aSelector |
		(aClass lookupSelector: aSelector) ast isTest
			ifTrue:[
					"SUITE_ADD_TEST(suite, TestCuStringNew);"
					body addStatement: (ASTCFunctionCall new
						id:  #SUITE_ADD_TEST asCIdentifierNode;
						arguments: { #suite asCIdentifierNode. aSelector asCIdentifierNode } ;	
						yourself) asStatement
				].
		 ].

	body statements ifEmpty:	[ self error: 'I bluntly refuse to translate a test class without tests !' ].

	"CuSuite* suite = CuSuiteNew();"
	body statements addFirst: (#suite asCIdentifierNode assign: (ASTCFunctionCall new id: #CuSuiteNew asCIdentifierNode ; yourself)) asStatement.
	body addDeclaration: (ASTCDeclarationStatement new
		declaration: 
			(ASTCVariableDeclaration new
				type: #'CuSuite*' asCTypeNode;
				id: #suite asCIdentifierNode;
				yourself)).

	cu add: suiteDeclarationFunction.
	^ cu
]
