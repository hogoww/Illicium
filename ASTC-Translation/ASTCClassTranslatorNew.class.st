Class {
	#name : #ASTCClassTranslatorNew,
	#superclass : #Object,
	#instVars : [
		'methodTranslator',
		'mainTranslator',
		'inferer'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #translation }
ASTCClassTranslatorNew >> callgraphTypeStartingFrom: methodsAST [
	methodsAST do: [:aMethodAST| inferer inferAST: aMethodAST ].
]

{ #category : #translation }
ASTCClassTranslatorNew >> compilationUnitFromTranslatedMethod: functionDefinitions [
	| cu |
	cu := ASTCCompilationUnit new.
	functionDefinitions
		do: [ :aFuncDef | 
			cu definitions add: aFuncDef.
			cu declarations add: aFuncDef declaration ].
	^ cu
]

{ #category : #accessing }
ASTCClassTranslatorNew >> doNotGeneratePragma [
	^ ASTCVirtualMachineAPI doNotGeneratePragma
]

{ #category : #accessing }
ASTCClassTranslatorNew >> getReplacementType: aClass [
	^ mainTranslator getReplacementType: aClass
]

{ #category : #accessing }
ASTCClassTranslatorNew >> initialize [
	methodTranslator := ASTCMethodTranslator new
		classTranslator: self;
		yourself.
	inferer := PhineasInferer new
]

{ #category : #accessing }
ASTCClassTranslatorNew >> mainTranslator [
	^ mainTranslator
]

{ #category : #accessing }
ASTCClassTranslatorNew >> mainTranslator: aMainTranslator [
	mainTranslator := aMainTranslator
]

{ #category : #accessing }
ASTCClassTranslatorNew >> methodTranslator [
	^ methodTranslator
]

{ #category : #accessing }
ASTCClassTranslatorNew >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #translation }
ASTCClassTranslatorNew >> methodsToTranslateASTs: aClass [
	^ inferer types methodTypes
		select: [ :aMethod | 
			(aClass methodDict keys includes: aMethod node selector)
				and: [ (aMethod node hasPragmaNamed: #doNotGenerate) not ] ]
		thenCollect: #node
]

{ #category : #translation }
ASTCClassTranslatorNew >> preTypeInference: aClass [
	inferer inferAST: (aClass >> #initializePlugin) ast
]

{ #category : #'translation-api' }
ASTCClassTranslatorNew >> translateClass: aClass [ 
	| methodsASTs functionDefinitionsASTs methodsToTranslate entryPoints |
	self preTypeInference: aClass.
	entryPoints := self typeInferenceEntryPoints: aClass.
	self callgraphTypeStartingFrom: entryPoints.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	^ self compilationUnitFromTranslatedMethod: functionDefinitionsASTs
]

{ #category : #'translation-api' }
ASTCClassTranslatorNew >> translateMethod: aCompiledMethod [
	^self translateMethod: aCompiledMethod selector fromClass: aCompiledMethod methodClass
]

{ #category : #'translation-api' }
ASTCClassTranslatorNew >> translateMethod: aSelector fromClass: aClass [
	| methodsASTs functionDefinitionsASTs methodsToTranslate |
	self preTypeInference: aClass.
	self callgraphTypeStartingFrom: { (aClass >> aSelector) ast  }.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self typeASTsOfMethods: methodsToTranslate.
	
	functionDefinitionsASTs := self translateMethodsASTs: methodsASTs.
	^self compilationUnitFromTranslatedMethod: functionDefinitionsASTs.
]

{ #category : #translation }
ASTCClassTranslatorNew >> translateMethodsASTs: methodsAST [
	^ methodsAST
		collect: [ :aMethodAST | methodTranslator translateMethodAST: aMethodAST ]
]

{ #category : #translation }
ASTCClassTranslatorNew >> typeASTsOfMethods: methodsASTs [
	| typeAnnotator |
	typeAnnotator := ASTCTypeAnnotationAST new
		inferer: inferer;
		yourself.
	methodsASTs
		do: [ :aMethodAST | aMethodAST acceptVisitor: typeAnnotator ].
	^ methodsASTs
]

{ #category : #translation }
ASTCClassTranslatorNew >> typeInferenceEntryPoints: aClass [
	| methods |
	methods := OrderedCollection new.
	aClass methodDict
		do: [ :aMethod | 
			(aMethod ast arguments isEmpty and: [(aMethod hasPragmaNamed: #doNotGenerate) not])
				ifTrue: [ methods add: aMethod ast copy ] ].
	^ methods
]
