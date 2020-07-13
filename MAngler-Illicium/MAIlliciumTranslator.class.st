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

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> prettyPrinterClass [

	^ FAPrettyPrint
]

{ #category : #'default-configuration' }
MAIlliciumTranslator class >> programClass [
	^ FAProgram
]

{ #category : #'as yet unclassified' }
MAIlliciumTranslator class >> translateTestClass: aClass [ 
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

{ #category : #visiting }
MAIlliciumTranslator >> translateProgram [
	| cu |
	self prepareProgram.

	cu := ASTCCompilationUnit new.
	program methods value
		collect: [ :aMethod | classTranslator methodTranslator translateMethod: aMethod ] into: cu.
	^ cu
]
