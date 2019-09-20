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

{ #category : #'as yet unclassified' }
ASTCClassTranslator class >> translateClass: aClass [
	^ self new translateClass: aClass
]

{ #category : #translation }
ASTCClassTranslator >> compilationUnitForClass: aClass [ 
	| typeAnnotator cu primitiveMethods methodsToTranslate ast typedMethods |

	self preTranslationCheck: aClass.
	primitiveMethods := self getPrimitiveToTranslate: aClass. """""""""""""""""""UNUSED... >_<"
	inferer := PhineasInferer new.

	self preTypeChecking: aClass.	
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
		yourself
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
	methodTranslator := aMethodTranslator
]

{ #category : #'translation-api' }
ASTCClassTranslator >> methodsToType [
	self subclassResponsibility 
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
			| ivType |
			ivType := mainTranslator
				getReplacementType: (inferer typeOfInstanceVariable: ivName ofClass: aClass) anyOne.
			aCompilationUnit declarations
				add:
					(ASTCVariableDeclaration new
						id:
							(ASTCIdentifier new
								id: ivName;
								yourself);
						type:
							(ASTCType new
								type: ivType;
								yourself);
						yourself) ]
]

{ #category : #'translation-api' }
ASTCClassTranslator >> translateMethod: aSelector fromClass: aClass [
	self halt.
	self error:'todo'
]

{ #category : #accessing }
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
