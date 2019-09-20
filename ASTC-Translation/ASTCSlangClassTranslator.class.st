Class {
	#name : #ASTCSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #check }
ASTCSlangClassTranslator >> preTranslationCheck: aClass [
	(aClass superclasses
		includes: InterpreterPlugin)
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]
