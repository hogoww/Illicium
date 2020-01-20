Class {
	#name : #ASTCSlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #configuration }
ASTCSlangTranslator class >> classTranslatorClass [
	^ ASTCSlangVMClassTranslator 
]

{ #category : #configuration }
ASTCSlangTranslator class >> prettyPrinterClass [

	^ ASTCSlangPrettyPrinter 
]

{ #category : #initialization }
ASTCSlangTranslator >> fillWithtranslatorSpecificTypes [
	replacementClasses at: #InterpreterProxy put: ASTCVirtualMachineProxy
]

{ #category : #initialization }
ASTCSlangTranslator >> getReplacementType: aSymbol [
	^ (ASTCSlangReceiver new type: aSymbol) asConstraint
]

{ #category : #'translation-api' }
ASTCSlangTranslator >> prettyPrinterClass [

	^ self classTranslator prettyPrinterClass
]
