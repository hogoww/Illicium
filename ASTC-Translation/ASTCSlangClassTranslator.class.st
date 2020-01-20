Class {
	#name : #ASTCSlangClassTranslator,
	#superclass : #ASTCClassTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCSlangClassTranslator >> initialize [
	super initialize.
	inferer := CCodeGeneratorGlobalStructure new.
	methodTranslator literalValueNodeTranslator: ILSlangLiteralValueNodeTranslator new.
	methodTranslator returnNodeTranslator: ILSlangReturnNodeTranslator new.
	methodTranslator TemporaryDeclarationNodeTranslator: ILSlangTemporaryDeclarationNodesTranslator new
]

{ #category : #initialization }
ASTCSlangClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #check }
ASTCSlangClassTranslator >> preTranslationConstraintCheck: aClass [
	((aClass allSuperclasses
		includes: InterpreterPlugin) or:[ aClass = InterpreterPrimitives])
		ifFalse: [ self error: 'can only translate plugins for now. They need to inherit from InterpreterPlugin.' ].
]

{ #category : #visiting }
ASTCSlangClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { ASTCSlangDeclarationAnnotator }
]

{ #category : #check }
ASTCSlangClassTranslator >> preTypeInference: aClass [
	| piType |
	piType := inferer typeForClass: InterpreterPlugin.
	piType
		instanceVariable: #interpreterProxy
		ifPresent: [ piType instanceVariables
				at: #interpreterProxy
					put: (PIExplicitType new
					name: #interpreterProxy;
					owner: piType;
					explicitType: (inferer typeProvider createConcreteType: InterpreterProxy));
				yourself ]
	"For now, handled by the Slang printer as part of the basic output of every plugin"
	"piType instanceVariable: #moduleName
	ifPresent: [ piType instanceVariables at:#moduleName put: 
		(inferer types createConcreteType: String) ]."
]

{ #category : #'translation-api' }
ASTCSlangClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [ 
	| method |
	aClass declareCVarsIn: inferer.
	method := (aClass lookupSelector: aSelector) ast copy.
	inferer addMethod: (method asTranslationMethodOfClass: TMethod).
	inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	
	inferer methodNamed: aSelector.
	
	self annotateMethodsASTWithTypes: { method }.
	^ { method }
]

{ #category : #'translation-api' }
ASTCSlangClassTranslator >> translateClass: aClass [ 
	self error: 'not adapted to refactor to use Slang yet'
]

{ #category : #typing }
ASTCSlangClassTranslator >> typeAnnotatorClass [
	^ ASTCSlangTypeAnnotator
]

{ #category : #'translation-api' }
ASTCSlangClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	^ self getReplacementType: (inferer typeOfVariable: anIVName)
]
