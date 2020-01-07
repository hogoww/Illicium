"
I am a copy of class ASTCPhineasTypeAnnotatorTest. This comment is copied from there, and might not be entirely accurate

I test the PhineasTypeAnnotator class
"
Class {
	#name : #ASTCSlangTypeAnnotatorTest,
	#superclass : #ASTCTypeAnnotatorTest,
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #testing }
ASTCSlangTypeAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #test }
ASTCSlangTypeAnnotatorTest >> inferMethodSelector: aSelector from: aClass [
	| aMethodAST |
	aMethodAST := (aClass >> aSelector) ast copy.
	visitor inferer addMethod: (aMethodAST asTranslationMethodOfClass: TMethod).
	visitor inferer inferTypesForImplicitlyTypedVariablesAndMethods.
	 
	aMethodAST acceptVisitor: visitor.
	^ aMethodAST
]

{ #category : #running }
ASTCSlangTypeAnnotatorTest >> setUp [
	visitor := ASTCSlangTypeAnnotationAST new 
		inferer: CCodeGenerator new;
		yourself.
	super setUp
]
