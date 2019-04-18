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
		'B'
	],
	#category : #'ASTC-Extensions-Tests-RBAnnotations'
}

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationAST2TestMethods class >> aMethodWithAClassInstanceVariable [
	B.
]

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithAClassVariable [
	A.
]

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationAST2TestMethods >> aMethodWithAGlobalVariable [
	Smalltalk.
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
