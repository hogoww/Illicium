Class {
	#name : #ASTCClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator'
	],
	#category : #'ASTC-Translating-overviewers'
}

{ #category : #'as yet unclassified' }
ASTCClassTranslator class >> translateClass: aClass [
	^ self new translateClass: aClass
]

{ #category : #accessing }
ASTCClassTranslator >> getReplacementType: aClass [
	^ mainTranslator getReplacementType: aClass
]

{ #category : #accessing }
ASTCClassTranslator >> initialize [
	methodTranslator := ASTCMethodTranslator new
		classTranslator: self;
		yourself
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator [
	^ mainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator: aMainTranslator [
	^ mainTranslator := aMainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator: aMethodTranslator [
	^ methodTranslator := aMethodTranslator
]

{ #category : #'as yet unclassified' }
ASTCClassTranslator >> translateClass: aClass [ 
	| primitives inferer typeAnnotator cu printer |
	(aClass traitComposition
		includesTrait: ASTCVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now.' ].


	primitives := aClass methods
		select: [ :aMethod | 
			aMethod pragmas
				anySatisfy: [ :aPragma | aPragma selector = ASTCVirtualMachineAPI primitiveName ] ]
		thenCollect:[ :aMethod | aMethod ast copy].

	inferer := PhineasInferer new.
	inferer inferAST: (aClass >> #initializePlugin) ast "copy".
	primitives do:[:aMethodAST|
		inferer inferAST: aMethodAST ].

	typeAnnotator := ASTCTypeAnnotationAST new inferer: inferer ; yourself.
	primitives do:[:aMethodAST|
		aMethodAST acceptVisitor: typeAnnotator
		].
	

	cu:=ASTCCompilationUnit new.
	primitives do:[:aMethodAST| |res|
		res:=methodTranslator translateMethodAST: aMethodAST.
		cu definitions add: res.
		cu declarations add: res declaration.
		]. 

	self flag:#horiffic."anyone here. Should use the mainTranslator"

	aClass allInstVarNames do:[:ivName| |ivType|
		ivType := mainTranslator getReplacementType: (typeAnnotator getTypeOfInstanceVariable: ivName ofClass: aClass) anyOne.
		cu declarations	add: 
			(ASTCVariableDeclaration new
				id: (ASTCIdentifier new id: ivName ; yourself);
				type: (ASTCType new type: ivType ; yourself);
				yourself).
		].

	cu debugASTCStructure.

	printer := ASTCFilePrinter new
		fileName: 'aFile' ;
		compilationUnit: cu ;
		isPrimitive: true;
		yourself.

	printer printInFile.

	printer CompileExternalPlugin.
	printer moveInVmDirectory.


	self halt.

]
