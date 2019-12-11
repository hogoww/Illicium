Class {
	#name : #ASTCNumber,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #default }
ASTCNumber class >> defaultValue [
	^0.0
]

{ #category : #translation }
ASTCNumber >> * aNumber [

	^  self translatedValue * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> + aNumber [
	
	^ self translatedValue + (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> - aNumber [

	^  self translatedValue - (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> / aNumber [
	
	^  self translatedValue / (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> < aNumber [
	
	^  self translatedValue < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> <= aNumber [
	
	^  self translatedValue <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> > aNumber [
	
	^ self translatedValue > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> >= aNumber [
	
	^  self translatedValue >= (aNumber acceptVisitor: methodTranslator)
]
