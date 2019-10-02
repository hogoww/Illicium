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
	inferer inferAST: (aClass >> #initializePlugin) ast
]
