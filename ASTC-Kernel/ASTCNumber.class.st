Class {
	#name : #ASTCNumber,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #translation }
ASTCNumber >> * aNumber [

	^ self translatedValue * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> + aNumber [
	
	^ self translatedValue + (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> - aNumber [

	^ self translatedValue - (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> / aNumber [
	
	^ self translatedValue / (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> < aNumber [
	
	^ self translatedValue < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> <= aNumber [
	
	^ self translatedValue <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> > aNumber [
	
	^ self translatedValue > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> >= aNumber [
	
	^ self translatedValue >= (aNumber acceptVisitor: methodTranslator)
]
