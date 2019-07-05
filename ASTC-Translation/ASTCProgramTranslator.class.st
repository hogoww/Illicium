Class {
	#name : #ASTCProgramTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #post }
ASTCProgramTranslator >> checkStructure: aCollectionOfASTCMethods [
	self flag:#comment.
	aCollectionOfASTCMethods do:[:aMethodAST | 
		self assert: aMethodAST isStructuralyValidAST.

		"on: AssertionFailure do the following to debug
			aMethodAST debugASTCStructure"
		].
	
]

{ #category : #post }
ASTCProgramTranslator >> postGenerationMethodAnalysisFor: aCollectionOfASTCMethods [
	self checkStructure: aCollectionOfASTCMethods 

	
]

{ #category : #'As yet unclassified' }
ASTCProgramTranslator >> printTranslatedMethods: aCollection [ 
	| printer |
	
	printer := ASTCFilePrinter new
		fileName: 'aFile' ;
		classDictionary: aCollection ;
		isPrimitive: true;
		yourself.
	
	printer printInFile.
	"self halt."
	printer CompileExternalPlugin.
	printer moveInVmDirectory.
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateProgramMethods: aCollectionOfMethodTypes [
	| translationVisitor methodTypeDispatcher res |
	translationVisitor := ASTCFromPharo new.
 	methodTypeDispatcher := PIIsMethodTypeInterpreted new.
	res := OrderedCollection new.
	aCollectionOfMethodTypes do:[:aMethodType | 
		(aMethodType accept: methodTypeDispatcher)
		ifTrue:[	res add:(translationVisitor visitMethodAST:aMethodType node)]].
	^res.	
	
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateStartingFrom: aSelector from: aClass [
	| mainAst inferer translatedMethods initializeAst |
	mainAst := (aClass >> aSelector) ast.
	initializeAst := ([ aClass >> #initializePlugin ]
		on: KeyNotFound
		do: [ nil ]) ifNotNil: [ :value | value ast ].
	inferer := self typeProgram: mainAst withInitialize: initializeAst.
	self typeProgramAsts: inferer.
	translatedMethods := self
		translateProgramMethods:
			(inferer types methodTypes
				select: [ :aMethod | 
					aMethod node pragmas
						noneSatisfy: [ :aPragma | aPragma selector = #doNotGenerate ] ]).
	self postGenerationMethodAnalysisFor: translatedMethods.
	self printTranslatedMethods: translatedMethods.
	self halt
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgram: anEntryPointAst [
	|inferer|
	inferer := PhineasInferer new.
	inferer inferAST: anEntryPointAst.
	^inferer.
	
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgram: anEntryPointAst withInitialize: anInitializeMethodAst [
	| inferer |
	inferer := PhineasInferer new.
	anInitializeMethodAst ifNotNil: [ :ast | inferer inferAST: ast ].	"Necessary for some Instances variables"
	inferer inferAST: anEntryPointAst.

	"we then remove it for now because we don't want it to be translated"
	anInitializeMethodAst
		ifNotNil: [ :ast | 
			| mt |
			mt := inferer types methodTypes.
			mt remove: (mt detect: [ :aMethod | aMethod node = ast ]) ].
	^ inferer
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgramAsts: anInferer [
	| typeVisitor |
	typeVisitor:=ASTCTypeAnnotationAST new
		inferer: anInferer
		yourself.
	
	anInferer types methodTypes do:[:aMethod | (aMethod node) acceptVisitor: typeVisitor ]
]
