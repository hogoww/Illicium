Class {
	#name : #MASlangClassTranslatorMock,
	#superclass : #Object,
	#category : #'MAngler-Slang-Tests-AnalysisSupport'
}

{ #category : #annotation }
MASlangClassTranslatorMock >> annotateMethodAST: aMethod [
	"we're only testing the Super annotation here, so we forget the others"
	| visitor |
	visitor := MASlangSuperAnnotator new classTranslator: self; yourself.
	aMethod acceptVisitor: visitor
]
