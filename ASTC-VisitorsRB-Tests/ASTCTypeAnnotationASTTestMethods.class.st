Class {
	#name : #ASTCTypeAnnotationASTTestMethods,
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
	#category : #'ASTC-VisitorsRB-Tests-Typing'
}

{ #category : #'as yet unclassified' }
ASTCTypeAnnotationASTTestMethods class >> aMethodWithAClassVariable [
	b:=1
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodThatReturnAMessageThatReturnsAnInt [
	^1+2.
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithAClassVariable [
	A:=3.
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithAGlobalVariable [
	ASTCExpression.
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithALiteralNode [
	1.
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithATemporaryVariable [
	| t |
	t:=3.

]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithAnInstanceVariable [
	iv:=3.
]

{ #category : #test }
ASTCTypeAnnotationASTTestMethods >> aMethodWithSelf [
	self.
]
