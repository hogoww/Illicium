Class {
	#name : #MASlangPluginTranslator,
	#superclass : #MASlangTranslator,
	#category : #'MAngler-Slang-translators'
}

{ #category : #configuration }
MASlangPluginTranslator class >> classTranslatorClass [
	^ MASlangPluginClassTranslator 
]
