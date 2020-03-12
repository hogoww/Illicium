Class {
	#name : #MASlangVMClassTranslator,
	#superclass : #MASlangClassTranslator,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #asserting }
MASlangVMClassTranslator class >> shouldITranslate: aMethod [

	^ aMethod isSubclassResponsibility not
		and: [ (aMethod hasPragmaNamed: #doNotGenerate) not
			and: [ (aMethod hasPragmaNamed: #cmacro) not
				and: [ (aMethod hasPragmaNamed: #cmacro:) not
					and: [ aMethod selector ~~ #initialize 
						"and: [ (MAFullVMCCodeGeneratorRessource current codeGenerator 
							methodNamed: aMethod selector) isNotNil ]"]]]]
]

{ #category : #configuration }
MASlangVMClassTranslator >> prettyPrinterClass [

	^ MASlangPrettyPrinter
]
