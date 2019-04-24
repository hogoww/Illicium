Class {
	#name : #ASTCProgramTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateProgramMethods: aCollectionOfMethodTypes [
	| translationVisitor |
	translationVisitor := ASTCFromPharo new.
 
	^aCollectionOfMethodTypes collect:[:aMethodType|translationVisitor visitMethodAST:aMethodType node ]
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> translateStartingFrom: aSelector from: aClass [
	| mainAst inferer translatedMethod |
	mainAst := (aClass >> aSelector) ast.
	
	inferer := self typeProgram: mainAst.
	self typeProgramAsts: inferer.
	
	translatedMethod:=self translateProgramMethods: inferer types methodTypes.
	self halt.
]

{ #category : #'as yet unclassified' }
ASTCProgramTranslator >> typeProgram: anEntryPointAst [
	| inferer |
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
