Class {
	#name : #ASTCSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #check }
ASTCSlangClassTranslator >> getPrimitiveToTranslate: aClass [
	^ (aClass methods
		select: [ :aMethod | 
			| anAST |
			anAST := aMethod ast.
			anAST arguments isEmpty
				and: [ anAST pragmas
						noneSatisfy: [ :aPragma | aPragma selector = #doNotGenerate ] ] ])
		collect: #ast
]

{ #category : #check }
ASTCSlangClassTranslator >> preTranslationCheck: aClass [
	(aClass allSuperclasses
		includes: InterpreterPlugin)
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]

{ #category : #check }
ASTCSlangClassTranslator >> preTypeChecking: aClass [
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

{ #category : #check }
ASTCSlangClassTranslator >> translateClassPart: aClass in: aCompilationUnit [
	| slangCompatibleIVs |
	slangCompatibleIVs := aClass allInstVarNames asOrderedCollection
		remove: #translatedMethodCache;
		remove: #moduleName;
		yourself.
	slangCompatibleIVs
		do: [ :ivName | 
			aCompilationUnit declarations
				add: (self translateInstanceVariable: ivName from: aClass) ]
]
