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

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateProgramMethods: aCollectionOfMethodTypes [
	| translationVisitor methodTypeDispatcher res |
	translationVisitor := ASTCFromPharo new.
 	methodTypeDispatcher := PIIsMethodTypeInterpreted new.
	res:=OrderedCollection new.
	aCollectionOfMethodTypes do:[:aMethodType | 
		(aMethodType accept: methodTypeDispatcher)
		ifTrue:[	res add:(translationVisitor visitMethodAST:aMethodType node)]].
	^res.	
	
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateStartingFrom: aSelector from: aClass [
	| mainAst inferer translatedMethod |
	mainAst := (aClass >> aSelector) ast.
	
	inferer := self typeProgram: mainAst.
	self typeProgramAsts: inferer.
	
	translatedMethod:=self translateProgramMethods: inferer types methodTypes.
	self postGenerationMethodAnalysisFor: translatedMethod.
	self halt.
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgram: anEntryPointAst [
	|inferer|
	inferer := PhineasInferer new.
	inferer inferAST: anEntryPointAst.
	^inferer.
	
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgramAsts: anInferer [
	| typeVisitor |
	typeVisitor:=ASTCTypeAnnotationAST new
		inferer: anInferer
		yourself.
	
	anInferer types methodTypes do:[:aMethod | (aMethod node) acceptVisitor: typeVisitor ]
]
