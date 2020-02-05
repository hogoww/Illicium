Class {
	#name : #ANSlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'Angler-Slang-translators'
}

{ #category : #configuration }
ANSlangTranslator class >> classTranslatorClass [
	^ ANSlangVMClassTranslator 
]

{ #category : #configuration }
ANSlangTranslator class >> prettyPrinterClass [

	^ ANSlangPrettyPrinter 
]

{ #category : #initialization }
ANSlangTranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: #InterpreterProxy put: ASTCVirtualMachineProxy
]

{ #category : #initialization }
ANSlangTranslator >> getReplacementType: aSymbol [
	^ (ANSlangReceiver new type: aSymbol) asConstraint
]

{ #category : #'translation-api' }
ANSlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]

{ #category : #accessing }
ANSlangTranslator >> program: anANSlangProgram [ 
	
	classTranslator program: anANSlangProgram
]
