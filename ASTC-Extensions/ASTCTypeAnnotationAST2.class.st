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
	type crLog.
	^aMessageNode.
]
