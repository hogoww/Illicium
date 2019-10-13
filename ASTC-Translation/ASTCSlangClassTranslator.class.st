Class {
	#name : #ASTCSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCSlangClassTranslator >> initialize [
	super initialize.
	inferer explicitTypeHeuristic: PISlangTypesHeuristic.
]

{ #category : #check }
ASTCSlangClassTranslator >> preTranslationConstraintCheck: aClass [
	(aClass allSuperclasses
		includes: InterpreterPlugin)
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]

{ #category : #check }
ASTCSlangClassTranslator >> preTypeInference: aClass [
	| piType |
	inferer types createConcreteType: aClass.
	piType := (inferer typeForClass: InterpreterPlugin).
	piType instanceVariable: #interpreterProxy
		ifPresent: [ piType instanceVariables at:#interpreterProxy put: 
			(inferer types createConcreteType: InterpreterProxy) ].
	"For now, handled by the Slang printer as part of the basic output of every plugin"
	"piType instanceVariable: #moduleName
	ifPresent: [ piType instanceVariables at:#moduleName put: 
		(inferer types createConcreteType: String) ]." 

]
