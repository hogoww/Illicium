Class {
	#name : #MASlangTranslator,
	#superclass : #FATranslator,
	#category : #'MAngler-Slang-Translation'
}

{ #category : #configuration }
MASlangTranslator class >> classTranslatorClass [
	^ MASlangVMClassTranslator 
]

{ #category : #configuration }
MASlangTranslator class >> prettyPrinterClass [

	^ MASlangPrettyPrinter 
]

{ #category : #initialization }
MASlangTranslator >> getReplacementType: aSymbol [
	^ (MASlangReceiver new type: aSymbol) asConstraint
]

{ #category : #'translation-api' }
MASlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]
