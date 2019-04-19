Class {
	#name : #ASTCTypeAnnotationAST2TestMethods,
	#superclass : #Object,
	#instVars : [
		'iv'
	],
	#classVars : [
		'A'
	],
	#classInstVars : [
		'b'
	],
	#category : #'ASTC-Extensions-Tests-RBAnnotations'
}

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationAST2TestMethods class >> aMethodWithAClassVariable [
	b:=1
]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodThatReturnAMessageThatReturnsAnInt [
	^1+2.
]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithAClassVariable [
	A:=3.
]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithAGlobalVariable [
	ASTCExpression.
]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithATemporaryVariable [
	| t |
	t:=3.

]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithAnInstanceVariable [
	iv:=3.
]

{ #category : #test }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithSelf [
	self.
]
