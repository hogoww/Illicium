Class {
	#name : #IlliciumClassTranslator,
	#superclass : #FAClassTranslator,
	#category : #'Angler-Illicium-translation'
}

{ #category : #initialization }
IlliciumClassTranslator >> initialize [
	super initialize.
	inferer := PhineasInferer new explicitTypeHeuristic: PISlangTypesHeuristic; yourself. 
	"we also manipulate vm stuff, so we need vm type inference"

]

{ #category : #translation }
IlliciumClassTranslator >> isStatefulCode [
	^ false
]

{ #category : #translation }
IlliciumClassTranslator >> preTranslationConstraintCheck: aClass [
	(aClass traitComposition
		includesTrait: IlliciumVirtualMachineAPI)
		ifFalse: [ self error: 'can only translate plugins for now. They need to use the ASTCVirtualMachineAPI trait.' ].
]

{ #category : #visiting }
IlliciumClassTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ { 
		IlliciumDeclarationAnnotator new. 
		IlliciumPhineasTypeAnnotator new inferer: inferer ; yourself"always take the latest inferer"
		}
]

{ #category : #'translation-api' }
IlliciumClassTranslator >> prepareForTranslationFromSelector: aSelector fromClass: aClass [
	| methodsASTs methodsToTranslate |
	self preTranslationConstraintCheck: aClass.
	self preTypeInference: aClass.
	self callgraphTypeStartingFrom: {(aClass >> aSelector) ast}.
	methodsToTranslate := self methodsToTranslateASTs: aClass.
	methodsASTs := self annotateMethodsASTWithTypes: methodsToTranslate.
	^ methodsASTs
]

{ #category : #typing }
IlliciumClassTranslator >> typeAnnotatorClass [
	^ IlliciumPhineasTypeAnnotator
]

{ #category : #typing }
IlliciumClassTranslator >> typeOfVariable: anIVName ofClass: aClass [
	"should be pushed into phineas"
	| phineasType type |
	phineasType := 	phineasType := (inferer concreteTypesOfInstanceVariable: anIVName ofClass:aClass).
	type := (IlliciumTypeChecker type: phineasType asPharoType using: inferer forVar: anIVName).
	^ self getReplacementType: type
]
