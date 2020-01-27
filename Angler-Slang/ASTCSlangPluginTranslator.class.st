Class {
	#name : #ASTCSlangPluginTranslator,
	#superclass : #ASTCSlangTranslator,
	#category : #'Angler-Slang'
}

{ #category : #configuration }
ASTCSlangPluginTranslator class >> classTranslatorClass [
	^ ASTCSlangPluginClassTranslator 
]
