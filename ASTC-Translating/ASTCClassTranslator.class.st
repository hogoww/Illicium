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

{ #category : #translation }
ASTCClassTranslator >> compilationUnitForClass: aClass [ 
	| inferer typeAnnotator cu primitiveMethods methodsToTranslate ast |

	"self preTranslationCheck: aClass".
	primitiveMethods := self getPrimitiveTranslates: aClass.

	ast := (ASTCVirtualMachineAPI >> #initializePlugin) ast copy.
	ast methodNode methodClass: aClass.

	inferer := PhineasInferer new.
	inferer inferAST: ast.
	primitiveMethods do:[:aMethodAST|
		inferer inferAST: aMethodAST ].

	methodsToTranslate := Set new
		addAll: primitiveMethods ;
		yourself.
	
	inferer types methodTypes do:[:aMethodType|
		((aClass methodDict anySatisfy: [:aMethod| aMethod selector = aMethodType node selector ]) 
			and:[ aMethodType node pragmas noneSatisfy: [:aPragma| aPragma selector = ASTCVirtualMachineAPI doNotGeneratePragma ]])
			ifTrue:[ methodsToTranslate add: aMethodType node copy ].
		].

	typeAnnotator := ASTCTypeAnnotationAST new inferer: inferer ; yourself.
	methodsToTranslate do:[:aMethodAST|
		aMethodAST acceptVisitor: typeAnnotator
		].
	
	
	cu:=ASTCCompilationUnit new.
	methodsToTranslate do:[:aMethodAST| |res|
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
	^ cu
]

{ #category : #translation }
ASTCClassTranslator >> getPrimitiveTranslates: aClass. [
	^aClass methods collect: #ast
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

{ #category : #translation }
ASTCClassTranslator >> preTranslationCheck: aClass [
	(aClass traitComposition
		includesTrait: ASTCVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now. They need to use the ASTCVirtualMachineAPI trait.' ].

]

{ #category : #translation }
ASTCClassTranslator >> translateClass: aClass [ 
	| cu printer |

	cu := self compilationUnitForClass: aClass.
	printer := ASTCFilePrinter new
		fileName: aClass asString ;
		compilationUnit: cu ;
		isPrimitive: true ;
		yourself.

	printer printInFile.

	printer CompileExternalPlugin.
	printer moveInVmDirectory.


	self halt.

]
