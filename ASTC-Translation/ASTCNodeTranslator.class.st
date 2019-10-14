Class {
	#name : #ASTCNodeTranslator,
	#superclass : #Object,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'methodTranslator'
	],
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCNodeTranslator >> methodTranslator [
	^ methodTranslator
]

{ #category : #translate }
ASTCNodeTranslator >> methodTranslator: aMethodTranslator [
	methodTranslator := aMethodTranslator
]

{ #category : #translate }
ASTCNodeTranslator >> translateNode: aNode [
	self subclassResponsibility
]

{ #category : #translate }
ASTCNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	self subclassResponsibility
]
