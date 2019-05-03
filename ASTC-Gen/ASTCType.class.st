Class {
	#name : #ASTCType,
	#superclass : #ASTCNode,
	#instVars : [
		'type'
	],
	#category : #'ASTC-Gen-Node'
}

{ #category : #visiting }
ASTCType >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCType:self.].
]

{ #category : #visiting }
ASTCType >> acceptVisitor: aVisitor [
	^aVisitor visitASTCType:self.
]

{ #category : #accessors }
ASTCType >> type [
	^type
]

{ #category : #accessors }
ASTCType >> type: anObject [
	type:=anObject.
	^anObject.
]

{ #category : #printing }
ASTCType >> typeAsString [
	^type asString.
]
