Class {
	#name : #ASTCClassTranslator,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'inferer'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #translation }
ASTCClassTranslator >> compilationUnitForClass: aClass [ 
	| cu primitiveMethods typedMethods |

	self preTranslationCheck: aClass.
	primitiveMethods := self getPrimitiveToTranslate: aClass. 
	
	self preTypeChecking: aClass.	
	primitiveMethods do: [:aPrimitiveMethod| inferer inferAST: aPrimitiveMethod  ].
	typedMethods := self typeMethodsOf: aClass.
	
	cu:=ASTCCompilationUnit new.
	typedMethods do:[:aMethodAST| |res|
		res:=methodTranslator translateMethodAST: aMethodAST.
		cu definitions add: res.
		cu declarations add: res declaration.
		].

	self translateClassPart: aClass in: cu.
	
	cu debugASTCStructure.
	^ cu
]

{ #category : #accessing }
ASTCClassTranslator >> doNotGeneratePragma [
	^ ASTCVirtualMachineAPI doNotGeneratePragma
]

{ #category : #accessing }
ASTCClassTranslator >> getPrimitiveToTranslate: aClass [
	self subclassResponsibility 
]

{ #category : #accessing }
ASTCClassTranslator >> getReplacementType: aClass [
	^ mainTranslator getReplacementType: aClass
]

{ #category : #accessing }
ASTCClassTranslator >> initialize [
	methodTranslator := ASTCMethodTranslator new
		classTranslator: self;
		yourself.
	inferer := PhineasInferer new
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator [
	^ mainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> mainTranslator: aMainTranslator [
	mainTranslator := aMainTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #accessing }
ASTCClassTranslator >> methodTranslator: aMethodTranslator [
	aMethodTranslator mainTranslator: self.
	methodTranslator := aMethodTranslator
]

{ #category : #translation }
ASTCClassTranslator >> methodsToType [
	^ inferer types methodTypes
]

{ #category : #translation }
ASTCClassTranslator >> preTranslationCheck: aClass [
	self subclassResponsibility 
]

{ #category : #check }
ASTCClassTranslator >> preTypeChecking: aClass [
	"empty hook"
]

{ #category : #'translation-api' }
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

{ #category : #translation }
ASTCClassTranslator >> translateClassPart: aClass in: aCompilationUnit [
	aClass allInstVarNames
		do: [ :ivName | 
			aCompilationUnit declarations
				add: (self translateInstanceVariable: ivName from: aClass) ]
]

{ #category : #translation }
ASTCClassTranslator >> translateInstanceVariable: anIVName from: aClass [
	| ivType |
	ivType := mainTranslator
		getReplacementType: (inferer typeOfInstanceVariable: anIVName ofClass: aClass) anyOne.
	^ ASTCVariableDeclaration new
		id:
			(ASTCIdentifier new
				id: anIVName;
				yourself);
		type:
			(ASTCType new
				type: ivType;
				yourself);
		yourself
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aCompiledMethod [
	^methodTranslator translateMethodAST: aCompiledMethod ast
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aSelector fromClass: aClass [
	self halt. "missing typecheck"
	^methodTranslator translateMethodAST: (aClass >> aSelector) ast
]

{ #category : #translation }
ASTCClassTranslator >> typeMethodsOf: aClass [
	| typedMethods typeAnnotator |
	typedMethods := Set new.
	self methodsToType
		do: [ :aMethodType | 
			((aClass methodDict
				anySatisfy: [ :aMethod | aMethod selector = aMethodType node selector ])
				and: [ aMethodType node pragmas
						noneSatisfy:
							[ :aPragma | aPragma selector = self doNotGeneratePragma ] ])
				ifTrue: [ typedMethods add: aMethodType node copy ] ].

	typeAnnotator := ASTCTypeAnnotationAST new inferer: inferer ; yourself.
	typedMethods do:[:aMethodAST|
		aMethodAST acceptVisitor: typeAnnotator.
		].
	^typedMethods 
]
