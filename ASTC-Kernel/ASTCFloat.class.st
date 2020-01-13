Class {
	#name : #ASTCFloat,
	#superclass : #ASTCNumber,
	#category : #'ASTC-Kernel'
}

{ #category : #type }
ASTCFloat class >> asCType [
	^ #float
]

{ #category : #default }
ASTCFloat class >> defaultValue [
	^0.0
]
