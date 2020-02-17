Class {
	#name : #MASlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'Angler-Slang-translators'
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
MASlangTranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: #InterpreterProxy put: ASTCVirtualMachineProxy
]

{ #category : #initialization }
MASlangTranslator >> getReplacementType: aSymbol [
	^ (MASlangReceiver new type: aSymbol) asConstraint
]

{ #category : #'translation-api' }
MASlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]

{ #category : #accessing }
MASlangTranslator >> program: anANSlangProgram [ 
	
	classTranslator program: anANSlangProgram
]
