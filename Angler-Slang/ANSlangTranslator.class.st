Class {
	#name : #ANSlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'Angler-Slang'
}

{ #category : #configuration }
ANSlangTranslator class >> classTranslatorClass [
	^ ANSlangVMClassTranslator 
]

{ #category : #configuration }
ANSlangTranslator class >> prettyPrinterClass [

	^ ANSlangPrettyPrinter 
]

{ #category : #'program-configuration' }
ANSlangTranslator >> addMethod: aCollection [ 
	^ classTranslator addMethod: aCollection
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
