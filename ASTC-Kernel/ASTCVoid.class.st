Class {
	#name : #ASTCVoid,
	#superclass : #ASTCKernelClasses,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#category : #'ASTC-Kernel'
}

{ #category : #converting }
ASTCVoid class >> asCType [
	^'void'
]
