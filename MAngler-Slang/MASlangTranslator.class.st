Class {
	#name : #MASlangTranslator,
	#superclass : #FATranslator,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #'default-configuration' }
MASlangTranslator class >> classTranslatorClass [
	^ MASlangVMClassTranslator 
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
			and: [ (aMethod hasPragmaNamed: #cmacro) not
				and: [ (aMethod hasPragmaNamed: #cmacro:) not
					and: [ aMethod selector ~~ #initialize 
						"and: [ (MAFullVMCCodeGeneratorRessource current codeGenerator 
							methodNamed: aMethod selector) isNotNil ]"]]]]
]

{ #category : #initialization }
MASlangTranslator >> getReplacementType: aSymbol [
	^ (MASlangReceiver new type: aSymbol) asConstraint
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

{ #category : #visiting }
MASlangTranslator >> preTranslationVisitors [
	"should return a collection of visitors for RBAST which will annotate a method AST"
	^ {
		MASlangMethodCleaner new.
		MASlangSuperAnnotator new classTranslator: self ; yourself.
		MASlangRequiredInliningMethodTagger new program: program ; yourself.
		MASlangTypeAnnotator new inferer: inferer ; yourself. "always take the latest inferer"
		MASlangDeclarationAnnotator new "this is required to be after the typeAnnotator. see its documention"
		}
]

{ #category : #'translation-api' }
MASlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]
