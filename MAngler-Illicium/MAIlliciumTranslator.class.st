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
	self printCompilationUnitInSeparateFiles: translation in: './generated/classes/' withClassName: aClass name.
	^ translation
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> generateTestClass: aClass [ 
	| translation |
	translation := self translateTestClass: aClass.
	self printCompilationUnitInSeparateFiles: translation in: './generated/tests/' withClassName: aClass name.
	^ translation
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
MAIlliciumTranslator >> printCompilationUnitInSeparateFiles: aCompilationUnit in: aDirectory withClassName: aClassName [
	| headerCompilationUnit |
	headerCompilationUnit := aCompilationUnit removeHeaderAndPutItInNewCompilationUnit.
	aCompilationUnit add: (ASTCPreprocessorInclude new name:  '"',aClassName , '.h"').
	
	self printCompilationUnit: headerCompilationUnit in: aDirectory withName: aClassName , '.h'.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: aClassName , '.c'
]

{ #category : #'generation-api' }
MAIlliciumTranslator >> printCompilationUnitInSingleFile: aCompilationUnit in: aDirectory withClassName: aClassName [
	aCompilationUnit addDeclarationsOfDefinitions.
	self printCompilationUnit: aCompilationUnit in: aDirectory withName: aClassName name , '.c'
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
	| cu suiteDeclarationFunction body testMethods |
	self testTranslationPreludeFor: aClass.
	cu := self translateClass: aClass.
	replacementClasses at: aClass name put: IlliciumUserClass.	
	
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

	"CuSuite* suite = CuSuiteNew();"
	body add: (#suite asCIdentifierNode assign: (ASTCFunctionCall new id: #CuSuiteNew asCIdentifierNode ; yourself)) asStatement.
	body add: (ASTCDeclarationStatement new
		declaration: 
			(ASTCVariableDeclaration new
				type: #'CuSuite*' asCTypeNode;
				id: #suite asCIdentifierNode;
				yourself)).

	testMethods := program methods select:[ :aMethod | aMethod isTest ].
	testMethods ifEmpty: [ self error: 'I bluntly refuse to translate a test class without tests !' ].
	testMethods do: [ :aMethod|
					"SUITE_ADD_TEST(suite, TestCuStringNew);"
					body addStatement: (ASTCFunctionCall new
						id:  #SUITE_ADD_TEST asCIdentifierNode;
						arguments: { #suite asCIdentifierNode. aMethod selector asCIdentifierNode } ;	
						yourself) asStatement
				].
	
	body add: (ASTCReturn new expression: #suite asCIdentifierNode ; yourself).

	cu add: suiteDeclarationFunction.
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
