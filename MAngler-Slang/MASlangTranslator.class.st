Class {
	#name : #MASlangTranslator,
	#superclass : #FATranslator,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #'default-configuration' }
MASlangTranslator class >> classTranslatorClass [
	^ MASlangVMClassTranslator 
]

{ #category : #testing }
MASlangTranslator class >> isCMacro: aMethod [
	^ (aMethod hasPragmaNamed: #cmacro)
		or: [(aMethod hasPragmaNamed: #cmacro:) ].
]

{ #category : #'special selectors' }
MASlangTranslator class >> isSpecialSelector: aString [ 
	
	^ MASlangReceiver slangReservedSelector includes: aString
]

{ #category : #'default-configuration' }
MASlangTranslator class >> prettyPrinterClass [

	^ MASlangPrettyPrinter 
]

{ #category : #'default-configuration' }
MASlangTranslator class >> programClass [
	^ MASlangProgram
]

{ #category : #asserting }
MASlangTranslator class >> shouldITranslate: aMethod [ 

	^ aMethod isSubclassResponsibility not
		and: [ (aMethod hasPragmaNamed: #doNotGenerate) not
					and: [ aMethod selector ~~ #initialize 
						"and isMacro not. ->  they should be"
						"and: [ (MAFullVMCCodeGeneratorRessource current codeGenerator 
							methodNamed: aMethod selector) isNotNil ]"]]
]

{ #category : #'translation-api' }
MASlangTranslator >> generateVM [
	"Shortcut, since the VM is the base program for this translator"
	^ FANewFilePrinter new
		fileName: 'vm';
		compilationUnit: self translateProgram;
		prettyPrinter: self class prettyPrinterClass new;
		printInFile;
		yourself
]

{ #category : #initialization }
MASlangTranslator >> getReplacementType: aCType [
	^ ((aCType isStruct
		ifTrue:[ aCType pharoType: (program structNamed: aCType type).
			MASlangStructsReceiver new ]
		ifFalse:[ MASlangReceiver new ]) 
			type: aCType ; yourself) asConstraint.
]

{ #category : #accesors }
MASlangTranslator >> inferer [
	^ inferer
]

{ #category : #'translation-api' }
MASlangTranslator >> initialize [
	super initialize.
	inferer := CCodeGeneratorGlobalStructure new
]

{ #category : #testing }
MASlangTranslator >> isCMacro: aMethod [
	^ self class isCMacro: aMethod
]

{ #category : #testing }
MASlangTranslator >> isGlobalInstanceVariable: aString [ 
	
	^ (inferer globalsAsSet includes: aString)
		and: [ inferer placeInStructure: aString ]
]

{ #category : #visiting }
MASlangTranslator >> preTranslationAnnotators [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ {
		MASlangMethodCleaner new. "not technically an annotator, but requires to be applied first currently. this will change when acceptMultipleVisitor: will be done properly"
		MASlangSuperAnnotator new classTranslator: self ; yourself.
		MASlangRequiredInliningMethodTagger new program: program ; yourself.
		MASlangTypeAnnotator new inferer: inferer ; yourself. "always take the latest inferer"
		MASlangDeclarationAnnotator new "this is required to be after the typeAnnotator. see its documention"
		}
]

{ #category : #accessing }
MASlangTranslator >> preTranslationTransformations [
	^ { 
		MAGlobalStructureAccessTransformer translator: self.
		MASlangMinimalInliner translator: self
	}
]

{ #category : #preparation }
MASlangTranslator >> prepareProgram [
	
	program prepareWithInferer: inferer inTranslator: self.
]

{ #category : #'translation-api' }
MASlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]

{ #category : #accessing }
MASlangTranslator >> transformations [
	^ { 
		MASlangMethodCleaner new.
		MAGlobalStructureAccessTransformer translator: self.
		MASlangMinimalInliner translator: self
	}
]

{ #category : #'translation-api' }
MASlangTranslator >> translateProgram [
	| cu |
	cu := super translateProgram.

	program structClasses collect: [ :aClass | classTranslator translateClassState: aClass  ] into: cu.

	^ cu
]

{ #category : #'translation-api' }
MASlangTranslator >> translateVM [
	"Shortcut, since the VM is the base program for this translator"
	^ self translateProgram
]
