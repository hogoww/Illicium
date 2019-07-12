Class {
	#name : #ASTCBoolean,
	#superclass : #ASTCObject,
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCBoolean class >> asCType [
	^#bool
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]
