Class {
	#name : #ASTCNumber,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #translation }
ASTCNumber >> * aNumber [

	^ self translatedReceiver * (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> + aNumber [
	
	^ self translatedReceiver + (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> - aNumber [

	^ self translatedReceiver - (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> / aNumber [
	
	^ self translatedReceiver / (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> < aNumber [
	
	^ self translatedReceiver < (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> <= aNumber [
	
	^ self translatedReceiver <= (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> > aNumber [
	
	^ self translatedReceiver > (aNumber acceptVisitor: methodTranslator)
]

{ #category : #translation }
ASTCNumber >> >= aNumber [
	
	^ self translatedReceiver >= (aNumber acceptVisitor: methodTranslator)
]
