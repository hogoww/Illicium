Class {
	#name : #ASTCObject,
	#superclass : #ASTCKernelClasses,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCObject class >> asCType [
	^'void*'
]

{ #category : #comparing }
ASTCObject >> = anotherObject [
	(methodTranslator isKindOf: ASTCMethodTranslator) "Allows to still use #= even though we need it for translation most times"
		ifFalse: [ ^ self value = anotherObject value ]
]
