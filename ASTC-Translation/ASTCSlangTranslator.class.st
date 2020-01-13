Class {
	#name : #ASTCSlangTranslator,
	#superclass : #ASTCTranslator,
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #'as yet unclassified' }
ASTCSlangTranslator class >> classTranslatorClass [
	^ ASTCSlangClassTranslator 
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
ASTCSlangTranslator >> newPrettyPrinter [

	^ ASTCSlangPrettyPrinter new
]
