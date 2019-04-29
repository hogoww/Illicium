Class {
	#name : #ASTCBoolean,
	#superclass : #ASTCKernelClasses,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCBoolean class >> asCType [
	^#bool
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
 	^ASTCIf new
		predicate:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]
