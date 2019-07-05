Class {
	#name : #ASTCClassTranslator,
	#superclass : #Object,
	#category : #'ASTC-Translation'
}

{ #category : #'as yet unclassified' }
ASTCClassTranslator class >> translateClass: aClass [
	^self new translateClass: aClass
]

{ #category : #'as yet unclassified' }
ASTCClassTranslator >> translateClass: aClass [
	| primitives inferer typeAnnotator translatedMethods translator |
	"(aClass traitComposition
		anySatisfy: [ :aTrait | aTrait = ASTCVirtualMachineAPI ])
		ifFalse: [ self error: 'can only translate plugins for now' ]."
	primitives := aClass methods
		select: [ :aMethod | 
			aMethod pragmas
				anySatisfy: [ :aPragma | aPragma selector = ASTCVirtualMachineAPI primitiveName ] ]
		thenCollect:[ :aMethod | aMethod ast].

	inferer := PhineasInferer new.
	primitives do:[:aMethodAST|
		inferer inferAST: aMethodAST ].

	typeAnnotator := ASTCTypeAnnotationAST new inferer: inferer ;yourself.
	primitives do:[:aMethodAST|
		aMethodAST acceptVisitor: typeAnnotator
		].
	
	translator := ASTCFromPharo new.
	translatedMethods := primitives collect:[:aMethodAST|
		 translator visitMethodAST: aMethodAST.
		].
	
	self halt.
]
