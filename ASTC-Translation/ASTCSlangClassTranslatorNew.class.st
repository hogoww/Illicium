Class {
	#name : #ASTCSlangClassTranslatorNew,
	#superclass : #ASTCClassTranslatorNew,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCSlangClassTranslatorNew >> initialize [
	super initialize.
	inferer explicitTypeHeuristic: PISlangTypesHeuristic.
]

{ #category : #check }
ASTCSlangClassTranslatorNew >> preTypeInference: aClass [
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
