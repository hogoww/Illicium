Class {
	#name : #ASTCTypeAnnotationAST2,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer'
	],
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #accessing }
ASTCTypeAnnotationAST2 class >> property [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #accessing }
ASTCTypeAnnotationAST2 >> inferer [
	^inferer
	
]

{ #category : #accessing }
ASTCTypeAnnotationAST2 >> inferer: aPhineasInferer [
	inferer:=aPhineasInferer.
	
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitMessageNode: aMessageNode [
	| type |
	type:= inferer getTypeForMessageNode: aMessageNode.
	self atNewPropertyPut: type
		for: aMessageNode.
	super visitMessageNode: aMessageNode.
	^aMessageNode.
]

{ #category : #visiting }
ASTCTypeAnnotationAST2 >> visitTemporaryNode: aTemporaryNode [
	| type |
	self flag:#wrongData."PIVariableType: (PIMessageType(RBMessageNode(1 * (self factorialR: 0 - 1)), PIConcreteType(SmallInteger) ) PIConcreteType(SmallInteger) ) is put in the node. need to find how to access it the underlying type"
	type:= inferer getTypeForAVariableNode: aTemporaryNode.
	self atNewPropertyPut: type
		for: aTemporaryNode.
	super visitTemporaryNode: aTemporaryNode.

	(aTemporaryNode propertyAt:self class property ifAbsent:[self error: 'fuck']) crLog.

	^aTemporaryNode.
	
]
