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
ASTCBoolean >> ifFTrue: trueBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: ASTCBlock new;
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: ASTCBlock new;
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifFalse: falseBlock ifTrue: trueBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]

{ #category : #controlling }
ASTCBoolean >> ifTrue: trueBlock ifFalse: falseBlock [
 	^ASTCIf new
		condition:(self value acceptVisitor:self visitor);
		then: (trueBlock acceptVisitor: self visitor);
		else: (falseBlock acceptVisitor: self visitor);
		yourself.
]
