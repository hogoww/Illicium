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
	replacementClasses at: InterpreterProxy put: ASTCVirtualMachineProxy
]
